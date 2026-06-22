# Velkommen — kiitos

Kiitos er et universelt KI-instruksrammeverk for VS Code. Denne filen er den operative inngangen for fyret.

- Universell kiitos-introduksjon: [guide/kiitos.md](guide/kiitos.md)
- Begreper og navnekonvensjoner: [styringsgrunnlag/begrepsmatrise.md](styringsgrunnlag/begrepsmatrise.md)
- Fysisk påmønstring: [guide/installasjon.md](guide/installasjon.md)

## Kjerneinstruks

- Kiitos er et universelt lag som deles på tvers av alle laug.
- Svar og dokumentasjon skal som hovedregel være på norsk (bokmål) når det passer.
- Denne `velkommen.md` er kanonisk oppstartsflate for fyret. Verktøyspesifikke portaler som `AGENTS.md`, `.github/copilot-instructions.md` eller brukerprofiler i andre KI-verktøy skal peke hit, men kiitos skal ikke være bundet til ett filnavn.
- Når en ny bruker mangler hele kiitos-flaten, hjelp først med å hente/legge til nødvendige lag: `kiitos.fyr`, relevant `kiitos.laug.*`, eventuell `kiitos.ruff.*`, og deretter prosjektmapper. Start så trinnvis installasjon via [guide/installasjon.md](guide/installasjon.md) og gjør brukeren kjent med `/maskin oppia`.
- Hold deg til aktiv sak. Parker sidefunn i laugets `oppgaver/`.
- Vær økonomisk i bruk av KI: velg minste nødvendige instruksflate og rimeligste modell som løser saken, og spar tunge modelløp til uklare, tverrgående eller datatunge oppgaver.
- Norske ord beholdes med korrekt rettskrivning — ikke ASCII-normaliser `æ`, `ø` eller `å`.
- Når stabile ord, visjoner, mål eller arkitekturvalg avklares, løft til laveste riktige styringsfil.
- Plassering av innhold, personvern og journal-lag eies av [guide/plassering.md](guide/plassering.md).

## Lagmodell

Kiitos har fire lag:

| Lag | Hva | Prefiks/mapper |
|---|---|---|
| **Fyr** (dette repoet) | Universelt, delt på tvers av alle laug | `kiitos.fyr/guide/`, `kiitos.fyr/styringsgrunnlag/`, `kiitos.fyr/journal/` |
| **Laug** | Lagspesifikt eller privat laug | `kiitos.laug.<navn>/` eller privat repo |
| **Ruff** (valgfritt) | Personlige preferanser, oppgaver, kompetanse | `kiitos.ruff.<bruker>/` |
| **Prosjekt** | Eitt prosjekt med lokal instruks | `.kiitos/` i prosjektmappen |

Og to dimensjoner som ikke skal blandes:
1. **Lag:** fyr → laug → ruff → prosjekt
2. **Eierskap:** delt → personlig

## Deteksjonslogikk

Når kiitos aktiveres via en oppstartsinstruks, portalfil eller workspace-rot, skal KI gjøre følgende:

### 1. Finn lauget

Skann de andre workspace-røttene etter en mappe som inneholder `velkommen.md` i roten. Lauget er den første workspace-roten (utenom fyret selv) som har en `velkommen.md`.

### 2. Les laugtype

Laugets `velkommen.md` inneholder en metadatalinje:
```
<!-- kiitos-type: delt -->
```
eller
```
<!-- kiitos-type: privat -->
```

Bruk dette for å tilpasse oppførselen:
- **Delt**: Personlige filer forventes i `kiitos.ruff.<bruker>` (om den finnes som workspace-rot), eller i git-ignorerte lokale mapper.
- **Privat**: Personlige filer bor direkte i lauget. `kiitos.ruff.*` er ikke nødvendig.

### 3. Sjekk ruff

Se om en workspace-rot med navn som starter med `kiitos.ruff.` finnes. Hvis ja, les dens `velkommen.md` for personlige preferanser.

### 4. Sjekk installasjonsstatus

Hvis lauget mangler forventet mappestruktur (f.eks. `guide/`, `styringsgrunnlag/`, `journal/`, `oppgaver/`), tilby trinnvis hjelp for å sette det opp. Se [guide/installasjon.md](guide/installasjon.md).

### 5. Pref-bootstrap

Hvis brukerens pref-fil mangler:
- I delt laug med `kiitos.ruff.*`: Les malen fra `kiitos.fyr/.github/copilot-kiitos-pref-mal.md`, still spørsmålene som trengs, opprett pref-fil i `kiitos.ruff.*/.github/copilot-kiitos-pref.md`.
- I delt laug uten `kiitos.ruff.*`: Opprett pref-fil lokalt i lauget som git-ignorert `.github/copilot-kiitos-pref.md`.
- I privat laug: Opprett pref-fil i lauget.

### 6. Initialiser sporing av periodiske skills

Sjekk om KI-minne (`/memories/refleksjonsskills-sporing.md`) finnes. Hvis ikke:

1. Let etter den nyeste journalposten i `kiitos.fyr/journal/` som inneholder en kjøringsplan for refleksjonsskills.
2. Gjenskaper sporinga i KI-minne basert på journalen.
3. Hvis ingen journalpost finnes, opprett sporinga med standardverdier:

| Skill | Rytme | Neste kjøring |
|---|---|---|
| Forbindelsesfinner | Ukentlig | Neste mandag |
| Motsigelsesfinner | Månedlig | Om én måned |
| Innsiktsløfter | Ved behov | — |

Informer brukeren kort: «Sporing av periodiske skills er gjenopprettet fra journalen.»

### 7. Varsle om nye eller endrede regler

Hvis kiitos-roten eller laugets instruksfiler har endret seg siden forrige samtale (for eksempel etter `git pull`), varsle brukeren kort ved første nye samtale:

> Visste du forresten at det er kommet nye eller endrede kiitos-regler. Skriv `/maskin oppia` for å gå gjennom dem, eller fortsett som vanlig.

Deteksjon: Sjekk om `guide/`, `styringsgrunnlag/` eller `.github/skills/` i kiitos-roten eller lauget har filer med nyere endringstidspunkt enn forrige kjente samtale, eller bruk `git diff` mot forrige kjente tilstand når git er tilgjengelig. Varslingen er informativ — brukeren velger selv om de vil gjøre en gjennomgang.

## Leserekkefølge

1. Denne filen (universell inngang, deteksjonslogikk)
2. Laugets `velkommen.md` (laugspesifikk orientering)
3. `kiitos.ruff.*`s `velkommen.md` (personlige preferanser, hvis den finnes)
4. `guide/kiitos.md` for universell orientering
5. Laugets `guide/kiitos.md` for prosjektkart
6. Prosjektets `.kiitos/prosjektinstruks.md` når den finnes

## Kanarifugl

- Avslutt alltid hvert svar med kanarifugl-linjen fra brukerens pref-fil når den er satt.
- Pref-filen finnes i `kiitos.ruff.*/.github/copilot-kiitos-pref.md` (delt laug) eller laugets `.github/copilot-kiitos-pref.md` (privat laug).
- Hvis pref-fila mangler eller ikke angir egen kanarifugl-linje, bruk standardlinjen: Instruksene vibrerer harmonisk til systemutviklerens sang

## Aktive flater i kiitos

- `guide/` — universelle guider og arbeidsmåter
- `styringsgrunnlag/` — universell styring, begrepsmatrise, visjoner
- `journal/` — universell journal for tverrgående kiitos-saker
- `.github/skills/` — base-skills (maskiner) som deles på tvers av alle laug
- `.claude/agents/` — universelle Claude-agenter

## Fysisk delingsmodell for maskiner (hybrid)

- Kiitos har base-skills i `.github/skills/` som oppdages automatisk av Copilot.
- Laug kan ha egne skills i sin `.github/skills/`-mappe.
- Laugets `velkommen.md` kan peke til spesifikke kiitos-skills eller egne skills.
- Ved navnekollisjon: laugets skill har forrang (lokal vinner over universell).
