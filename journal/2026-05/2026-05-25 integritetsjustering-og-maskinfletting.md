# 2026-05-25 Integritetsjustering og maskinfletting

Universjournalpost. Denne økten er en direkte videreføring av gen5-migreringen, med fokus på integritetsjustering, maskinreorganisering og opprydding av gen4-etterslep i operative filer.



# KI-instruks 1

> kiitos.arkiv trenger ikke refereres til. oppgrader claude-agentene. Brukes de? lag en mal for påmønstring av nye prosjekter. flytt maskinene brev-til* til mitt private rom. vurder om vi kan slette kalibrere-kiitos. brukes maskinene personvalg, prov, verktoy, fortsett, dry på egnede tidspunkt? Vurder om vi skal flette noen maskiner

## Problem: Gen4-etterslep og maskinreorganisering etter gen5-migrering

Etter fullført gen5-migrering sto det igjen en rekke gen4-referanser i operative filer, og maskinporteføljen trengte gjennomgang.

### Endringer utført

**kiitos.arkiv-fjerning:**
- Fjernet `kiitos.arkiv/`-referanser fra `guide/instruksintegritet.md` (2 steder), `guide/effektiv-samhandling-med-ki.md` og `.github/skills/dry/SKILL.md`

**Claude-agenter oppgradert:**
- Alle 5 `.claude/agents/*.agent.md` oppdatert: fjernet kiitos.arkiv-referanser, rettet `arbeidsbenk.md` → `velkommen.md` (agent002), oppdatert gen4-prosjektnavn (`HKDIRweb` → `k2`, `kr_web_api` → `k2webapi`, `kr_web_login_api` → `k2loginapi`, `kr2013` → `k2`) i alle agenter

**Påmønstringsmal:**
- Opprettet `maler/felles/.kiitos/prosjektinstruks.md` med seksjoner: Prosjekttype, Kort beskrivelse, Teknologistabel, Viktige mapper og filer, Lokale kjøreinstrukser, API- og databasekontrakter, Tverrprosjektlige avhengigheter, Lokale huskeregler
- Lagt til «Påmønstring av nytt prosjekt»-seksjon i `guide/installasjon.md` med 4-trinns prosess

**brev-til-* flyttet:**
- Flyttet `brev-til-sjef/SKILL.md` og `brev-til-senioringenior/SKILL.md` fra `kiitos.5/.github/skills/` til `kiitos.pro.th/.github/skills/`
- Slettet originalmapper i kiitos.5

**kalibrere-kiitos slettet:**
- Slettet `.github/skills/kalibrere-kiitos/` — obsolet i gen5 (ingen to installasjoner å synke)
- Fjernet fra `list/kjerne.md` og `guide/instruksintegritet.md`

**Maskinvurdering:**
- Vurderte alle maskiner for bruk, overlapp og flettemuligheter
- Presenterte anbefaling med tabell og begrunnelse for hver maskin

### Referanser
- `.claude/agents/agent001–005.agent.md`
- `maler/felles/.kiitos/prosjektinstruks.md`
- `guide/installasjon.md`
- `guide/instruksintegritet.md`



# KI-instruks 2

> Gjør flettingen. Omdøp også prov til utforsk, fordi det er problem å få til norske tegn i en maskin.

## Problem: Maskinfletting og omdøping

### Endringer utført

**`dry` absorbert i `integritetsjustere-kiitos`:**
- Omskrevet `integritetsjustere-kiitos/SKILL.md` med to moduser: DRY-sweep (`/maskin dry`) og full integritetssjekk
- Slettet `dry/`-mappen
- `/maskin dry` beholdt som alias

**`personvalg` + `fellesregel` flettet til `regelflyt`:**
- Opprettet `regelflyt/SKILL.md` med to retninger: `senk` (delt → personlig) og `løft` (personlig → delt)
- Slettet `personvalg/` og `fellesregel/`-mappene
- Gamle navn beholdt som aliaser

**`prov` omdøpt til `utforsk`:**
- Opprettet `utforsk/SKILL.md` med oppdatert navn, beskrivelse og alle `/maskin prøv` → `/maskin utforsk`
- Slettet `prov/`-mappen

**Referanseoppdateringer:**
- `list/kjerne.md`: Alle maskinoppføringer og hint oppdatert
- `guide/preferanser.md`: `/maskin personvalg` → `/maskin regelflyt senk`, `/maskin fellesregel` → `/maskin regelflyt løft`
- `.github/copilot-kiitos-pref-mal.md`: `/maskin prøv` → `/maskin utforsk`, `/maskin fellesregel` → `/maskin regelflyt løft`
- `guide/instruksintegritet.md`: Oppdatert maskinreferanser og kanoniske stier

### Endelig maskinliste (11 universelle + 2 personlige)

Universelle: `fortsett`, `integritetsjustere-kiitos`, `journal`, `kalibrere-minner`, `list`, `oppia`, `oppia-innspill`, `regelflyt`, `termer`, `utforsk`, `verktoy`

Personlige (kiitos.pro.th): `brev-til-sjef`, `brev-til-senioringenior`



# KI-instruks 3

> Fortsett

Sluttverifisering etter flettingen. Fant etterslep i:
- `kiitos.lag.kanalregistrene/oppgaver/ki-9-faktaeier-matrise-for-dry-maskin.md`: Oppdatert `skills/dry/SKILL.md` → `skills/integritetsjustere-kiitos/SKILL.md`
- `kiitos.pro.th/kompetanse/kiitos-oppia-lokalt.md` og `kiitos-oppia-k2loginapi-lokalt.md`: Oppdatert alle skill-stier etter fletting (dry → integritetsjustere-kiitos, fellesregel/personvalg → regelflyt, lagt til utforsk)



# KI-instruks 4

> Jeg ser altså en del referanser til guide.arbeidshus  .. kanskje det finnes andre arbeidshus referanser?  dette er svært gamle referanser og skal peke til kiitos univers.

## Problem: Gen4-etterslep `guide.arbeidshus/`

Fant 17 referanser til `guide.arbeidshus/` i to oppia-kompetansefiler i kiitos.pro.th. `guide.arbeidshus/` var gen4-mappenavnet — i gen5 heter det bare `guide/`.

### Endringer utført
- `kiitos-oppia-lokalt.md`: 8 × `guide.arbeidshus/X.md` → `guide/X.md`, fjernet `samtale-instrukser.md` (finnes ikke lenger)
- `kiitos-oppia-k2loginapi-lokalt.md`: 9 × `guide.arbeidshus/X.md` → `guide/X.md`, fjernet `samtale-instrukser.md`

Verifisert med bred søk — ingen `arbeidshus`-referanser gjenstår i operative filer.



# KI-instruks 5

> Sjekk intralenking.  Hvis nyttig, legg dette inn integritetsmaskinen

## Problem: Brutte markdown-lenker i operative filer

Bygget et PowerShell-skript som resolver alle relative markdown-lenker i operative filer (ekskl. journal/) og sjekker om målfilen eksisterer.

### Funn

| Rom | Brutte | Type |
|---|---|---|
| kiitos.5 | 4 i `maler/` | Forventet — peker til filer som vil finnes etter deploy |
| kiitos.lag | ~20 i `analyse/` | Historiske dokumenter, unntatt fra sweep |
| kiitos.lag | 2 i `oppgaver/ki-1` | Gen4-stier: `guide.univers/samtale-instrukser.md`, `arbeidsbenk.md` |
| kiitos.lag | 3 i `spesifikasjoner/` | `univers.md` omdøpt til `systemkart.md` |
| kiitos.pro.th | 0 | Rent |

### Endringer utført
- `spesifikasjoner/README.md`: `univers.md` → `systemkart.md`
- `spesifikasjoner/k1/README.md`: `../univers.md` → `../systemkart.md`
- `spesifikasjoner/k2/README.md`: `../univers.md` → `../systemkart.md`
- `oppgaver/ki-1-fortlopende-lagring-brukerinstrukser.md`: Fjernet brutte gen4-lenker, erstattet med gjeldende stier

**Ny kontrollakse i integritetsmaskinen:**
- Lagt inn `intralenking` som femte kontrollakse i `guide/instruksintegritet.md` med typiske avvik og unntaksregler
- Oppdatert `integritetsjustere-kiitos/SKILL.md`-wrapperen til å inkludere den nye aksen
- Hurtigoppslaget oppdatert fra 4 til 5 akser



# KI-instruks 6

> journalfør

Stilte forberedende spørsmål. Bruker bekreftet tema, ønsket full dekning, og bekreftet lukking av ki-11.



# KI-instruks 7

> 1. ja bruk det tema og resten som melding
> 2. dekk hele samtalen som ikke ennå er journalført.
> 6. ja, lukk ki-11.

Denne journalposten. Oppgave ki-11 lukkes — gen5-arkitekturen løser det ki-11 beskrev: synkbar kjerne er nå et eget universelt lag (kiitos.5/), arbeidsromsspesifikt innhold er separert i kiitos.lag.*, og personlig profil i kiitos.pro.*.

### Lukket oppgave
- `kiitos.lag.kanalregistrene/oppgaver/ki-11-samkjor-restdifferanser-og-del-ut-synkbar-kiitos-kjerne.md` — løst av gen5-arkitekturen
