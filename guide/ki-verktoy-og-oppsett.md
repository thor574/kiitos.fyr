# Detaljert verktøyoppsett for KI-verktøy (Windows + Scoop)

Mål: Gjøre terminalmiljøet nyttig fra dag 1, slik at KI kan bruke vanlige verktøy uten å feile på manglende installasjon, og gjøre første oppstart av kiitos synlig og repeterbar.

Denne guiden er detaljvedlegget for verktøy og terminalmiljø etter at VS Code-workspace-et allerede er koblet opp.
Denne guiden forutsetter at påmønstringen allerede er gjort via [installasjon.md](installasjon.md).

## 0. Forutsetning

- VS Code-workspace-et er allerede koblet opp med de kanoniske workspace-navnene.
- Hvis du fortsatt mangler selve workspace-oppsettet, gå tilbake til [installasjon.md](installasjon.md).
- Hvis workspace-et er oppe og du bare mangler verktøy, fortsett direkte til punkt 1.

## 1. Installer Scoop

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

## 2. Installer anbefalte og valgfrie verktøy

Anbefalt kjernepakke:

```powershell
scoop install ripgrep fd jq yq
```

Valgfrie tillegg for søk, lesing og navigasjon:

```powershell
scoop install fzf bat delta eza zoxide
```

Valgfrie tillegg for erstatning og måling:

```powershell
scoop install sd hyperfine
```

Valgfrie utvidelser:

```powershell
scoop install ast-grep watchexec rga difftastic gh just uv xh
```

### HTTPie i dette miljøet

Installer HTTPie i Scoop-Python:

```powershell
python -m pip install --upgrade pip wheel
python -m pip install httpie
```

Anbefalt bruk i dette miljøet er modulvarianten:

```powershell
python -m httpie --version
python -m httpie --offline GET example.org
```

Merk:

- `http.exe` og `httpie.exe` kan være blokkert av Windows-sikkerhet, selv om pakken er installert.
- `winget install HTTPie.HTTPie` installerer Desktop-appen, ikke CLI-verktøyene.
- `xh` er et godt alternativ når du vil ha en vanlig kommandolinjeklient uten modulsyntaks.

## 3. Verifiser at verktøyene finnes

```powershell
$recommended = @('rg','fd','jq','yq')
$optional = @('fzf','bat','delta','sd','hyperfine','eza','zoxide','sg','watchexec','rga','difft','gh','just','uv','xh')
($recommended | ForEach-Object {
    $cmd = Get-Command $_ -ErrorAction SilentlyContinue
    [pscustomobject]@{
        Nivaa = 'anbefalt'
        Tool = $_
        Installed = [bool]$cmd
        Path = if ($cmd) { $cmd.Source } else { '-' }
    }
}) + ($optional | ForEach-Object {
    $cmd = Get-Command $_ -ErrorAction SilentlyContinue
    [pscustomobject]@{
        Nivaa = 'valgfri'
        Tool = $_
        Installed = [bool]$cmd
        Path = if ($cmd) { $cmd.Source } else { '-' }
    }
}) | Format-Table -AutoSize
```

HTTPie verifiseres separat:

```powershell
python -m httpie --version
```

## 4. Avtale for nye verktøy

- KI bruker først den anbefalte kjernepakken når verktøyene finnes.
- KI kan også bruke valgfrie verktøy som allerede er installert.
- Hvis et valgfritt verktøy mangler, skal KI falle tilbake uten å stoppe opp.
- Når KI ønsker et nytt verktøy som ikke står i listen, spør KI først.
- Utvikler vurderer om verktøyet skal legges inn som anbefalt eller stå som valgfritt.

## 5. Kort status for KI i denne benken

Anbefalte verktøy:
`rg`, `fd`, `jq`, `yq`

Valgfrie tillegg:
`fzf`, `bat`, `delta`, `sd`, `hyperfine`, `eza`, `zoxide`, `sg`, `watchexec`, `rga`, `difft`, `gh`, `just`, `uv`, `xh`

HTTPie brukes som `python -m httpie ...` i dette miljøet når det trengs.

Hvis et verktøy likevel mangler i miljøet, skal KI falle tilbake til innebygde alternativer og si tydelig fra.

## 6. Kjente KI-verktøyfeller

- `create_file` kan i enkelte tilfeller skrive literal `\u00xx`-sekvenser i stedet for ekte UTF-8-tegn når norsk tekst opprettes.
- Hvis KI bruker `create_file` til tekst med `æ`, `ø` eller `å`, skal resultatet verifiseres med målrettet søk før arbeidet regnes som ferdig.
- Hvis slike sekvenser faktisk ble skrevet, skal de erstattes med de reelle tegnene før filen tas i bruk videre.
- Ved store filendringer med `apply_patch`: del patchen opp i mindre biter tidlig hvis den blir stor, i stedet for å sende én svært stor patch. Dette reduserer risiko for patchfeil og gir mer robust redigering.
