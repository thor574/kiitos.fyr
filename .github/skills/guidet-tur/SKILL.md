---
name: guidet-tur
description: "Valgfri guidet tur for nye brukere av kiitos. Stiller spørsmål trinn for trinn, oppretter en privat ruff med personlig profil, og hjelper brukeren å legge det til i VS Code workspace."
---

# Guidet tur — kom i gang med kiitos

Denne maskinen gir nye brukere en steg-for-steg innføring i kiitos. Brukeren får laget sin egen ruff med personlig profil gjennom en serie valgfrie spørsmål.

## Bruk

- `/maskin guidet-tur` — start den guidede turen.

## Forutsetninger

- `kiitos.fyr` og relevant laug finnes helst allerede som workspace-røtter i VS Code. Hvis ikke, hjelp først brukeren med grunnoppsettet i `kiitos.fyr/guide/installasjon.md`.
- Brukeren har ikke nødvendigvis en personlig ruff ennå.

## Viktige regler

- Alle temaer er valgfrie — brukeren kan hoppe over hvert enkelt med «hopp over».
- Ikke press brukeren til å svare på noe de ikke vil.
- Bruk en varm og inviterende tone — dette er deres første møte med kiitos.
- Ikke opprett filer før brukeren har bekreftet plasseringen.
- Personopplysninger skal kun lagres i brukerens private område.
- Ikke legg passord, tokens eller hemmeligheter i noen fil.

## Flyten (steg for steg)

### Steg 1: Velkommen

Si kort hva kiitos er og hva turen vil gjøre:

> Velkommen til kiitos! Dette er en kort guidet tur der du får satt opp din egen personlige ruff. Underveis stiller jeg noen spørsmål slik at KI-assistenten din kan bli bedre kjent med deg og hvordan du liker å jobbe. Alt er valgfritt — du kan hoppe over hva som helst.
>
> Alt du skriver inn her lagres bare lokalt på din egen maskin, i en egen mappe som ikke deles med andre. Det er kun du og din KI-assistent som ser det.

### Steg 2: Velg plassering og navn

Still disse spørsmålene:

1. **Hva vil du kalle arbeidsrommet ditt?** Foreslå `kiitos.ruff.<initialer>` (f.eks. `kiitos.ruff.oh` eller `kiitos.ruff.ola`) som eksempler. Brukeren velger selv initialer, fornavn eller kallenavn.
2. **Plassering** — Mappen opprettes som søsken til den eksisterende kiitos-mappen, altså i foreldremappen `../` relativt til kiitos-roten i workspace. Beskriv dette relativt, ikke med absolutt sti. Vis den utledede stien som forslag slik at brukeren kan bekrefte.

Vent på svar. Bekreft den endelige plasseringen før du oppretter noe.

### Steg 3: Opprett mappestruktur

Opprett følgende struktur i den valgte mappen:

```
<arbeidsromnavn>/
    velkommen.md              ← med <!-- kiitos-type: privat --> øverst
    AGENTS.md                 ← tynn portal → velkommen.md
    LESMEG.md                 ← kort menneskevendt intro
    .gitignore                ← ignorer workspace-fil og lokal pref
    .github/
        copilot-instructions.md   ← Copilot-portal → velkommen.md
        copilot-kiitos-pref.md    ← fylles i steg 5–10
    guide/
        kiitos.md             ← prosjektkart (kort oversikt)
    journal/
    oppgaver/
```

Bruk malene fra `kiitos.fyr/maler/privat-arbeidsrom/` og `kiitos.fyr/maler/felles/` som utgangspunkt, men tilpass med brukerens valgte navn.

`copilot-instructions.md` er bare Copilot-portalen. Hvis brukeren bruker et annet KI-verktøy, be dem opprette tilsvarende tynn portal eller bruker-/prosjektinstruks som peker til `velkommen.md`.

Fortell brukeren hva som ble opprettet med en kort oversikt.

### Steg 4: Legg til i VS Code workspace

Gi brukeren denne instruksen:

> Nå skal vi legge den nye mappen til i VS Code:
> 1. Gå til **File → Add Folder to Workspace…**
> 2. Velg mappen `<sti til arbeidsrommet>`
> 3. Mappen skal helst ligge etter `kiitos` i workspace-rekkefølgen.

Vent til brukeren bekrefter at mappen er lagt til.

### Steg 5: Kommunikasjonsstil

Still disse spørsmålene (vis alternativer):

1. **Samtaleform** — Hvordan foretrekker du at KI snakker med deg?
   - `direkte og knapp`: kort, tydelig og lite innpakning
   - `direkte og varm`: tydelig og ærlig, men med mykere ordvalg
   - `utforskende og forsiktig`: mer avklarende, med flere forbehold og mykere landing
   - `annet`: beskriv selv
2. **Svarstil** — Vil du at KI skal gå rett på sak, eller gi en kort innledning først?
3. **Detaljeringsnivå** — Foretrekker du kortfattede, balanserte eller utfyllende svar?

### Steg 6: Kanarifugl

Forklar konseptet kort:

> Kanarifuglen er en fast linje som KI setter helt til slutt i hvert svar. Den gjør det lett å se at svaret kom helt fram og at instruksene er lest. Du kan lage din egen — den kan gjerne være personlig, motiverende eller humoristisk.

Vis noen forslag:
- Instruksene vibrerer harmonisk til systemutviklerens sang
- Kanarifuglen kvitrer, og arbeidsrommet holder kursen
- Signalet lever, og svarsløyfen er intakt
- ...eller skriv din egen.

### Steg 7: Påmønstringsmodus

Forklar de tre nivåene kort:

- **Stille**: KI holder seg i bakgrunnen. Du styrer selv hva som skal leses.
- **Utforskende**: KI nevner kort når en modul *ville vært relevant*, men tvinger den ikke på deg.
- **Standard**: Full kiitos fra start. KI leser relevante guider automatisk.

Anbefal `utforskende` for nye brukere, men la dem velge fritt.

### Steg 8: Arbeidsform

Still disse spørsmålene:

1. **Endringskontroll** — Vil du at KI skal være streng, moderat eller fleksibel med å gjøre endringer?
2. **Primær IDE** — Hvilken editor bruker du mest? (VS Code, IntelliJ, MyEclipse, annet)

### Steg 9: Bakgrunn og interesser (helt valgfritt)

Forklar at dette hjelper KI å gi bedre svar, men at alt kan hoppes over:

1. **Hva jobber du med til daglig?** (rolle, domene, teknologier)
2. **Hva er dine primære programmeringsspråk?**
3. **Har du prosjekter du planlegger å bruke kiitos med?** Beskriv gjerne kort.
4. **Er det noe KI bør vite om arbeidsmiljøet ditt?** (verktøy, begrensninger, preferanser)

### Steg 10: Mål med kiitos

Still ett åpent spørsmål:

> Hva håper du å få ut av å bruke kiitos? For eksempel: bedre struktur, raskere arbeid med KI, mer konsistente svar, eller noe annet?

### Steg 11: Skriv pref-fil

Samle svarene fra steg 5–10 og skriv `.github/copilot-kiitos-pref.md` i brukerens arbeidsrom. Bruk formatet fra `kiitos.fyr/.github/copilot-kiitos-pref-mal.md`.

For felter brukeren hoppet over, bruk standardverdiene fra malen:
- Samtaleform: `direkte og varm`
- Svarstil: `gå rett på sak`
- Avklaringer: `bare når nødvendig`
- Forbedringsforslag: `etter godkjenning`
- Detaljeringsnivå: `balansert`
- Påmønstringsmodus: `utforskende`
- Journalføringsstart: `Privat mappe`
- Alle moduler: ikke satt (arver fra påmønstringsmodus)
- Endringskontroll: `moderat`
- Primær IDE: `Visual Studio Code`

Hvis brukeren ga bakgrunnsinformasjon i steg 9–10, legg det til som egne seksjoner nederst i pref-filen:

```markdown
## Bakgrunn

- Rolle: [det brukeren sa]
- Domene: [det brukeren sa]
- Primære språk: [det brukeren sa]
- Prosjekter: [det brukeren sa]

## Mål med kiitos

[det brukeren sa]
```

### Steg 12: Oppdater velkommen.md

Oppdater `velkommen.md` i brukerens arbeidsrom med eventuell relevant informasjon fra steg 9 (prosjekter, rolle) slik at prosjektkartet i arbeidsrommet reflekterer det de jobber med.

### Steg 13: Oppsummering

Gi en kort oppsummering av hva som ble satt opp:

- Vis mappestrukturen som ble opprettet
- Bekreft hvilke valg som ble gjort
- Forklar kort hva de kan gjøre videre:
  - Legge til prosjektmapper i workspace
  - Verifisere oppsettet mot `kiitos.fyr/guide/installasjon.md`
  - Starte opplæring eller gjennomgang med `/maskin oppia`
  - Utforske moduler med `/maskin utforsk`
  - Justere pref-filen når som helst
  - Bruke `/maskin fortsett` for å gjenoppta arbeid etter pause

Avslutt med kanarifugl-linjen brukeren valgte (eller standardlinjen hvis de ikke valgte en).
