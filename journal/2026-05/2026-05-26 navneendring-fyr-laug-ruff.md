# Navneendring: fyr / laug / ruff

Dato: 2026-05-26

## Bakgrunn

Kiitos-modellen har hatt generiske norske navn på lagene: «arbeidsrom» og «profil», pluss prefiks `kiitos.lag.*` og `kiitos.pro.*`. Disse manglet identitet og maritim/håndverksmessig resonans med selve kiitos-navnet.

Gjennom diskusjon ble tre nye suffiksnavn valgt — alle med innbyrdes alfabetisk rekkefølge (f < l < r) og med sterke konnotasjoner:

| Lag | Nytt navn | Gammel betegnelse | Betydning |
|---|---|---|---|
| 1 (universelt) | **fyr** | «kiitos» / «kiitos-universet» | Fyrtårnet — lyser over alt og viser vei |
| 2 (arbeidsgruppe) | **laug** | «arbeidsrom» / `kiitos.lag.*` | Lauget — gilde som binder beslektet arbeid |
| 3 (personlig) | **ruff** | «profil» / `kiitos.pro.*` | Ruffen — din private kahytt om bord |

Alle tre ordene har røtter i norsk kyst- og handelshistorie, noe som harmonerer med kiitos' finske opphav.

## Endringer

### Mappekonvensjoner (ny)
- `kiitos.fyr` — universelt lag (erstatter bare `kiitos`)
- `kiitos.laug.<navn>` — delt laug (erstatter `kiitos.lag.<navn>`)
- `kiitos.ruff.<bruker>` — personlig ruff (erstatter `kiitos.pro.<bruker>`)

### Lagmodell (ny)
```
fyr → laug → ruff → prosjekt
```

### Begrepsendringer
- «kiitos-universet» → «fyret»
- «arbeidsrom» (som lagnavn) → «laug» / «lauget»
- «profil» (som lagnavn) → «ruff» / «ruffen»
- `kiitos.lag.` → `kiitos.laug.`
- `kiitos.pro.` → `kiitos.ruff.`

### Filer oppdatert (aktive, ikke journal)

**kiitos.fyr/ (universelt lag):**
- `velkommen.md` — hovedinngang, lagmodell, deteksjonslogikk
- `README.md` — lagmodell, rask installasjon
- `AGENTS.md` — agentoversikt og plassholdere
- `gen5-plan.md` — migrasjonsplan og fasehistorikk
- `styringsgrunnlag/begrepsmatrise.md` — kanoniske definisjoner
- `styringsgrunnlag/designvalg.md` — DV-KIITOS-01 til -19
- `styringsgrunnlag/visjoner.md` — visjoner
- `guide/kiitos.md` — universell introduksjon
- `guide/plassering.md` — plasseringslogikk og personvern
- `guide/installasjon.md` — installasjonsguide
- `journal/README.md` — journal-README
- `maler/delt-arbeidsrom/velkommen.md` — delt mal
- `maler/privat-arbeidsrom/velkommen.md` — privat mal
- `maler/felles/AGENTS.md` — agentmal
- `.github/copilot-kiitos-pref-mal.md` — pref-mal
- `.github/skills/guidet-tur/SKILL.md` — guidet tur
- `.github/skills/regelflyt/SKILL.md` — regelflyt
- `.github/skills/oppia-innspill/SKILL.md` — oppia-innspill
- `.github/skills/verktoy/SKILL.md` — verktøy

**kiitos.laug.th/ (privat laug, th):**
- `AGENTS.md` — laugrot-portal
- `velkommen.md` — operativ inngang
- `LESMEG.md` — navigasjonshjelp
- `.github/copilot-instructions.md` — KI-ruting
- `guide/kiitos.md` — laugspesifikk intro
- `guide/samarbeid.md` — samarbeidsguide
- `guide/app-design.md` — designguide
- `guide/README.md` — guideoversikt
- `guide/kiitos-for-kolleger/README.md` — kanoniske kilder
- `guide/kiitos-for-kolleger/kom-i-gang.md` — kom-i-gang-guide
- `styringsgrunnlag/designvalg.md` — lokale designvalg

**kiitos.ruff.th/ (personlig ruff):**
- `velkommen.md` — personlig inngang
- `.github/copilot-instructions.md` — KI-ruting
- `.github/copilot-kiitos-pref.md` — personlige valg
- `.gitignore` — kommentar

### Journalfiler — IKKE endret
Alle eksisterende journalfiler er historiske og append-only. De beholder gamle navnekonvensjoner som historisk dokumentasjon.

## Manuelle steg (for brukeren)

Etter denne journaloppføringen må brukeren manuelt:
1. Gi nytt navn til mappen `kiitos` → `kiitos.fyr`
2. Gi nytt navn til mappen `kiitos.th\arbeidsrom.th` → `kiitos.laug.th` (eller flytt ut av `kiitos.th`)
3. Gi nytt navn til mappen `kiitos.pro.th` → `kiitos.ruff.th`
4. Oppdater `.code-workspace`-filen(e) med de nye mappestiene
5. Last inn arbeidsrommet på nytt i VS Code

## Designvalg

- **Alphabetisk rekkefølge f < l < r** sikrer naturlig sortering i filsystemer og tabeller.
- **«Arbeidsrom» beholdes i generisk bruk** der det betyr VS Code workspace, men erstattes av «laug» som kiitos-lagnavn.
- **Journalfiler ikke endret** — append-only-prinsippet er overholdt.
