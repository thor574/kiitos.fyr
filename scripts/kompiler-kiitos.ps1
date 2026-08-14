[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $ManifestPath,

    [switch] $Check
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Test-PathWithinRoot {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,

        [Parameter(Mandatory = $true)]
        [string] $Root
    )

    $trimChars = [char[]] @([IO.Path]::DirectorySeparatorChar, [IO.Path]::AltDirectorySeparatorChar)
    $normalizedPath = [IO.Path]::GetFullPath($Path)
    $normalizedRoot = [IO.Path]::GetFullPath($Root).TrimEnd($trimChars)
    $rootPrefix = $normalizedRoot + [IO.Path]::DirectorySeparatorChar

    return $normalizedPath.Equals($normalizedRoot, [StringComparison]::OrdinalIgnoreCase) -or
        $normalizedPath.StartsWith($rootPrefix, [StringComparison]::OrdinalIgnoreCase)
}

function ConvertTo-RelativeUriPath {
    param(
        [Parameter(Mandatory = $true)]
        [string] $FromDirectory,

        [Parameter(Mandatory = $true)]
        [string] $ToPath
    )

    $fromPath = [IO.Path]::GetFullPath($FromDirectory).TrimEnd([char[]] @(
        [IO.Path]::DirectorySeparatorChar,
        [IO.Path]::AltDirectorySeparatorChar
    )) + [IO.Path]::DirectorySeparatorChar
    $fromUri = [Uri]::new($fromPath)
    $toUri = [Uri]::new([IO.Path]::GetFullPath($ToPath))

    return $fromUri.MakeRelativeUri($toUri).ToString()
}

function Convert-RelativeMarkdownLinks {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Body,

        [Parameter(Mandatory = $true)]
        [string] $SourcePath,

        [Parameter(Mandatory = $true)]
        [string] $OutputDirectory
    )

    $sourceDirectory = Split-Path -Parent $SourcePath
    $pattern = '(?<prefix>!?\[[^\]\r\n]*\]\()(?<destination><[^>\r\n]+>|[^)\s\r\n]+)(?<suffix>[^)\r\n]*\))'
    $rewriteLink = {
        param($match)

        $destination = $match.Groups['destination'].Value
        if ($destination.StartsWith('<') -and $destination.EndsWith('>')) {
            $destination = $destination.Substring(1, $destination.Length - 2)
        }

        if ($destination -match '^[A-Za-z][A-Za-z0-9+.-]*:' -or
            $destination.StartsWith('//') -or
            [IO.Path]::IsPathRooted($destination)) {
            return $match.Value
        }

        $fragmentIndex = $destination.IndexOf('#')
        if ($fragmentIndex -ge 0) {
            $pathPart = $destination.Substring(0, $fragmentIndex)
            $fragment = $destination.Substring($fragmentIndex)
        }
        else {
            $pathPart = $destination
            $fragment = ''
        }

        $linkTarget = if ([string]::IsNullOrWhiteSpace($pathPart)) {
            $SourcePath
        }
        else {
            [IO.Path]::GetFullPath((Join-Path $sourceDirectory ([Uri]::UnescapeDataString($pathPart))))
        }

        if (-not (Test-Path -LiteralPath $linkTarget)) {
            throw "Brutt relativ Markdown-lenke i '$SourcePath': $destination"
        }

        $rewrittenDestination = (ConvertTo-RelativeUriPath -FromDirectory $OutputDirectory -ToPath $linkTarget) + $fragment
        return $match.Groups['prefix'].Value + $rewrittenDestination + $match.Groups['suffix'].Value
    }

    $insideFence = $false
    $fenceCharacter = ''
    $rewrittenParts = foreach ($part in [regex]::Split($Body, '(?<=\n)')) {
        $fenceMatch = [regex]::Match($part, '^\s*(?<fence>`{3,}|~{3,})')
        if ($fenceMatch.Success) {
            $fence = $fenceMatch.Groups['fence'].Value
            if (-not $insideFence) {
                $insideFence = $true
                $fenceCharacter = $fence.Substring(0, 1)
            }
            elseif ($fence.Substring(0, 1) -eq $fenceCharacter) {
                $insideFence = $false
                $fenceCharacter = ''
            }

            $part
            continue
        }

        if ($insideFence) {
            $part
            continue
        }

        [regex]::Replace($part, $pattern, $rewriteLink)
    }

    return $rewrittenParts -join ''
}

$manifestFile = (Resolve-Path -LiteralPath $ManifestPath).Path
$workspaceRoot = Split-Path -Parent $manifestFile
$manifest = Get-Content -LiteralPath $manifestFile -Raw -Encoding UTF8 | ConvertFrom-Json

if ($manifest.schemaVersion -ne 1) {
    throw "Ukjent manifestversjon: $($manifest.schemaVersion). Forventet 1."
}

if ([string]::IsNullOrWhiteSpace($manifest.workspace)) {
    throw 'Manifestet mangler workspace.'
}

if ([string]::IsNullOrWhiteSpace($manifest.output)) {
    throw 'Manifestet mangler output.'
}

if (-not ($manifest.PSObject.Properties.Name -contains 'workspaceFile') -or [string]::IsNullOrWhiteSpace($manifest.workspaceFile)) {
    throw 'Manifestet mangler workspaceFile.'
}

$workspaceFile = [IO.Path]::GetFullPath((Join-Path $workspaceRoot $manifest.workspaceFile))
if (-not (Test-PathWithinRoot -Path $workspaceFile -Root $workspaceRoot)) {
    throw 'Manifestets workspaceFile må ligge under laugets arbeidsromsrot.'
}
if ([IO.Path]::GetExtension($workspaceFile) -ne '.code-workspace') {
    throw 'Manifestets workspaceFile må være en .code-workspace-fil.'
}
if (-not (Test-Path -LiteralPath $workspaceFile -PathType Leaf)) {
    throw "Mangler VS Code-arbeidsrom: $($manifest.workspaceFile)"
}

$workspaceDefinition = Get-Content -LiteralPath $workspaceFile -Raw -Encoding UTF8 | ConvertFrom-Json
$workspaceDirectory = Split-Path -Parent $workspaceFile
$workspaceFolders = foreach ($folder in @($workspaceDefinition.folders)) {
    $folderPath = [IO.Path]::GetFullPath((Join-Path $workspaceDirectory $folder.path))
    $folderName = if (-not ($folder.PSObject.Properties.Name -contains 'name') -or [string]::IsNullOrWhiteSpace($folder.name)) {
        Split-Path -Leaf $folderPath
    }
    else {
        [string] $folder.name
    }

    [pscustomobject]@{
        Name = $folderName
        Path = $folderPath
    }
}

$outputPath = [IO.Path]::GetFullPath((Join-Path $workspaceRoot $manifest.output))
$expectedOutputPath = [IO.Path]::GetFullPath((Join-Path $workspaceRoot '.github/copilot-instructions.md'))

if (-not $outputPath.Equals($expectedOutputPath, [StringComparison]::OrdinalIgnoreCase)) {
    throw 'Kompilatets output må være .github/copilot-instructions.md under laugets arbeidsromsrot.'
}
$outputDirectory = Split-Path -Parent $outputPath

$sources = @($manifest.sources)
if ($sources.Count -eq 0) {
    throw 'Manifestet må angi minst én kilde.'
}

$sections = foreach ($source in $sources) {
    if ([string]::IsNullOrWhiteSpace($source.path) -or [string]::IsNullOrWhiteSpace($source.title)) {
        throw 'Hver kilde må ha title og path.'
    }

    $hasRoot = $source.PSObject.Properties.Name -contains 'root'
    $hasRootPattern = $source.PSObject.Properties.Name -contains 'rootPattern'
    $isOptional = ($source.PSObject.Properties.Name -contains 'optional') -and [bool] $source.optional

    $rootMatches = @(
        if ($hasRoot -and -not [string]::IsNullOrWhiteSpace($source.root)) {
            $workspaceFolders | Where-Object Name -EQ $source.root
        }
        elseif ($hasRootPattern -and -not [string]::IsNullOrWhiteSpace($source.rootPattern)) {
            $workspaceFolders | Where-Object Name -Like $source.rootPattern
        }
        else {
            throw "Kilden '$($source.title)' mangler root eller rootPattern."
        }
    )

    if ($rootMatches.Count -eq 0 -and $isOptional) {
        Write-Warning "Hopper over valgfri kilde uten workspace-rot: $($source.title)"
        continue
    }
    if ($rootMatches.Count -ne 1) {
        throw "Kilden '$($source.title)' må treffe nøyaktig én workspace-rot, men traff $($rootMatches.Count)."
    }

    if (-not (Test-Path -LiteralPath $rootMatches[0].Path -PathType Container)) {
        throw "Workspace-roten '$($rootMatches[0].Name)' finnes ikke: $($rootMatches[0].Path)"
    }

    $sourcePath = [IO.Path]::GetFullPath((Join-Path $rootMatches[0].Path $source.path))
    if (-not (Test-PathWithinRoot -Path $sourcePath -Root $rootMatches[0].Path)) {
        throw "Kilden '$($source.title)' går utenfor valgt workspace-rot: $($source.path)"
    }
    if ([IO.Path]::GetExtension($sourcePath) -ne '.md') {
        throw "Bare Markdown-kilder kan kompileres: $($source.path)"
    }
    if (-not (Test-Path -LiteralPath $sourcePath -PathType Leaf) -and $isOptional) {
        Write-Warning "Hopper over valgfri kilde som mangler: $($rootMatches[0].Name)/$($source.path)"
        continue
    }
    if (-not (Test-Path -LiteralPath $sourcePath -PathType Leaf)) {
        throw "Mangler kilde: $($source.path)"
    }

    $body = [IO.File]::ReadAllText($sourcePath, [Text.Encoding]::UTF8).Trim()
    $body = Convert-RelativeMarkdownLinks -Body $body -SourcePath $sourcePath -OutputDirectory $outputDirectory
    $sourceRelativePath = ConvertTo-RelativeUriPath -FromDirectory $rootMatches[0].Path -ToPath $sourcePath
    $sourceDisplay = "$($rootMatches[0].Name)/$sourceRelativePath"
    @"
## Kilde: $($source.title)

Kildefil: $sourceDisplay

$body
"@
}

$headerTemplatePath = Join-Path $PSScriptRoot 'kompiler-kiitos-mal.md'
if (-not (Test-Path -LiteralPath $headerTemplatePath -PathType Leaf)) {
    throw "Mangler kompilatmal: $headerTemplatePath"
}
$header = [IO.File]::ReadAllText($headerTemplatePath, [Text.Encoding]::UTF8).Trim().Replace('{{WORKSPACE}}', [string] $manifest.workspace)

$content = $header.TrimEnd() + "`r`n`r`n---`r`n`r`n" + ($sections -join "`r`n`r`n---`r`n`r`n") + "`r`n"

if ($Check) {
    if (-not (Test-Path -LiteralPath $outputPath -PathType Leaf)) {
        Write-Warning "Kompilatet mangler: $outputPath"
        exit 1
    }

    $existing = [IO.File]::ReadAllText($outputPath, [Text.Encoding]::UTF8)
    if ($existing -ne $content) {
        Write-Warning "Kompilatet er utdatert: $outputPath"
        exit 1
    }

    Write-Output "Kompilatet er oppdatert: $outputPath"
    exit 0
}

[IO.Directory]::CreateDirectory($outputDirectory) | Out-Null
[IO.File]::WriteAllText($outputPath, $content, [Text.UTF8Encoding]::new($false))

Write-Output "Genererte $outputPath fra $(@($sections).Count) kilder."
