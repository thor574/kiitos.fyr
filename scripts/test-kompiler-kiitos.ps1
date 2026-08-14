[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$compilerPath = Join-Path $PSScriptRoot 'kompiler-kiitos.ps1'
$testRoot = Join-Path ([IO.Path]::GetTempPath()) ('kiitos-kompilator-' + [Guid]::NewGuid().ToString('N'))
$laugRoot = Join-Path $testRoot 'laug'
$sourceRoot = Join-Path $testRoot 'source'
$guideRoot = Join-Path $sourceRoot 'guide'
$encoding = [Text.UTF8Encoding]::new($false)

function Write-Utf8File {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,

        [Parameter(Mandatory = $true)]
        [string] $Content
    )

    [IO.Directory]::CreateDirectory((Split-Path -Parent $Path)) | Out-Null
    [IO.File]::WriteAllText($Path, $Content, $encoding)
}

function Write-JsonFile {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,

        [Parameter(Mandatory = $true)]
        [object] $Value
    )

    Write-Utf8File -Path $Path -Content (($Value | ConvertTo-Json -Depth 10) + "`n")
}

function Assert-CompilerRejects {
    param(
        [Parameter(Mandatory = $true)]
        [string] $ManifestPath,

        [Parameter(Mandatory = $true)]
        [string] $ExpectedMessage
    )

    $rejected = $false
    try {
        & $compilerPath -ManifestPath $ManifestPath | Out-Null
    }
    catch {
        if ($_.Exception.Message -notlike "*$ExpectedMessage*") {
            throw
        }
        $rejected = $true
    }

    if (-not $rejected) {
        throw "Kompilatoren godtok et manifest som skulle avvises: $ManifestPath"
    }
}

try {
    [IO.Directory]::CreateDirectory($laugRoot) | Out-Null
    [IO.Directory]::CreateDirectory($guideRoot) | Out-Null

    $workspacePath = Join-Path $laugRoot 'test.code-workspace'
    $outsideWorkspacePath = Join-Path $testRoot 'outside.code-workspace'
    $sourcePath = Join-Path $sourceRoot 'velkommen.md'
    $guidePath = Join-Path $guideRoot 'kiitos.md'
    $outsideSourcePath = Join-Path $testRoot 'outside.md'

    $workspace = @{
        folders = @(
            @{
                name = 'source'
                path = '..\source'
            }
        )
        settings = @{}
    }
    Write-JsonFile -Path $workspacePath -Value $workspace
    Write-JsonFile -Path $outsideWorkspacePath -Value $workspace
    Write-Utf8File -Path $sourcePath -Content "# Test`n`n[Guide](guide/kiitos.md)`n`n``````markdown`n[Eksempel](finnes-ikke.md)`n```````n"
    Write-Utf8File -Path $guidePath -Content "# Guide`n"
    Write-Utf8File -Path $outsideSourcePath -Content "# Skal ikke kunne leses via manifestet`n"

    $baseManifest = @{
        schemaVersion = 1
        workspace = 'test'
        workspaceFile = 'test.code-workspace'
        output = '.github/copilot-instructions.md'
        sources = @(
            @{
                title = 'Testkilde'
                root = 'source'
                path = 'velkommen.md'
            }
        )
    }

    $badOutput = $baseManifest.Clone()
    $badOutput.output = 'annen-fil.md'
    $badOutputPath = Join-Path $laugRoot 'bad-output.json'
    Write-JsonFile -Path $badOutputPath -Value $badOutput
    Assert-CompilerRejects -ManifestPath $badOutputPath -ExpectedMessage 'output må være .github/copilot-instructions.md'

    $badWorkspace = $baseManifest.Clone()
    $badWorkspace.workspaceFile = '..\outside.code-workspace'
    $badWorkspacePath = Join-Path $laugRoot 'bad-workspace.json'
    Write-JsonFile -Path $badWorkspacePath -Value $badWorkspace
    Assert-CompilerRejects -ManifestPath $badWorkspacePath -ExpectedMessage 'workspaceFile må ligge under laugets arbeidsromsrot'

    $badSource = $baseManifest.Clone()
    $badSource.sources = @(
        @{
            title = 'Kilde på avveie'
            root = 'source'
            path = '..\outside.md'
        }
    )
    $badSourcePath = Join-Path $laugRoot 'bad-source.json'
    Write-JsonFile -Path $badSourcePath -Value $badSource
    Assert-CompilerRejects -ManifestPath $badSourcePath -ExpectedMessage 'går utenfor valgt workspace-rot'

    $goodManifestPath = Join-Path $laugRoot 'good.json'
    Write-JsonFile -Path $goodManifestPath -Value $baseManifest
    & $compilerPath -ManifestPath $goodManifestPath | Out-Null

    $outputPath = Join-Path $laugRoot '.github\copilot-instructions.md'
    $output = [IO.File]::ReadAllText($outputPath, [Text.Encoding]::UTF8)
    $linkMatch = [regex]::Match($output, '\[Guide\]\((?<target>[^)]+)\)')
    if (-not $linkMatch.Success) {
        throw 'Fant ikke den omskrevne testlenken i kompilatet.'
    }

    $rewrittenTarget = [Uri]::UnescapeDataString(($linkMatch.Groups['target'].Value -split '#', 2)[0])
    $resolvedTarget = [IO.Path]::GetFullPath((Join-Path (Split-Path -Parent $outputPath) $rewrittenTarget))
    if (-not $resolvedTarget.Equals($guidePath, [StringComparison]::OrdinalIgnoreCase)) {
        throw "Omskrevet lenke peker feil: $resolvedTarget"
    }
    if ($output -notmatch '\[Eksempel\]\(finnes-ikke\.md\)') {
        throw 'Markdown-eksemplet i kodegjerdet ble endret.'
    }

    Write-Output 'Kompilatortestene passerte: sikre stier og omskrevne relative lenker.'
}
finally {
    if (Test-Path -LiteralPath $testRoot) {
        [IO.Directory]::Delete($testRoot, $true)
    }
}
