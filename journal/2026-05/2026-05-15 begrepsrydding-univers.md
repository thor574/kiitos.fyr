# 2026-05-15 Begrepsrydding arbeidshus → univers

## Plan (brukerens instrukser)

Skifte kiitos-toppnivåbegrepet fra «arbeidshus» til «univers», omdøpe personlige mapper til `.min`/`.mine`-suffiks, innføre DRY som universprinsipp, dokumentere arbeidsmønstre i kiitos, og parkere forsterket oppia-gjennomgang som egen oppgave. Endringer i begge installasjoner (hkdir + th).

Fasene:
1. Kanonisk begrepsmatrise
2. Fysisk omdøping (mapper og filer)
3. Tekstsubstitusjon arbeidshus → univers
4. DRY-opprydding (pekerduplisering)
5. Dokumentere arbeidsmønstre (strukturell høvling + Ask-Plan-Agent)
6. Parkere oppia-oppgave

Navnekonvensjoner besluttet:
- Filnavn gjentar ikke mappenavn
- Personlige mapper bruker `.mine`/`.min`-suffiks
- Mappe + filstamme = naturlig unik ID
- Pekere gjøres i brede kontekster, peker til modul

## Utført arbeid

### Fase 2: Fysisk omdøping
- hkdir: `guide.arbeidshus/` → `guide.univers/`, `styringsgrunnlag.arbeidshus/` → `styringsgrunnlag.univers/`, `journal.arbeidshus/` → `journal.univers/`, `min-kompetanse/` → `kompetanse.min/`, `oppgaver-lokalt/` → `oppgaver.mine/`, `arbeidshus-visjoner.md` → `visjoner.md`, `spesifikasjoner/univers.md` → `spesifikasjoner/systemkart.md`
- th: `guide.arbeidshus/` → `guide.univers/`, `journal.arbeidshus/` → `journal.univers/` (th hadde ikke de øvrige mappene fysisk)
- `.gitignore` oppdatert i hkdir

### Fase 1: Begrepsmatrise
- Opprettet `styringsgrunnlag.univers/begrepsmatrise.md` i begge installasjoner
- Innhold: begreper, to dimensjoner (nivå + eierskap), navnekonvensjoner, DRY-prinsipp

### Fase 3: Tekstsubstitusjon
- hkdir: 33 filer endret, 0 gjenstående forekomster av «arbeidshus», «oppgaver-lokalt» eller «min-kompetanse» i aktive filer
- th: 30+ filer endret, 0 gjenstående forekomster (1 historisk referanse i migreringsmatrise beholdt)
- Journaler og kompetansefiler urørt (append-only)

### Fase 4: DRY-opprydding
- `guide/kiitos.md` i hkdir slanket fra ~80 linjer til ~45 linjer: fjernet duplikatseksjoner (aktive innganger, privat overstyringslag, hvor kiitos ligger fysisk, delbar kjerne), erstattet med pekere til kanoniske eiere
- Begrepsmatrise-peker lagt inn i `arbeidsbenk.md` i begge installasjoner
- `styringsgrunnlag.univers/` opprettet i th (fantes ikke fra før)

### Fase 5: Arbeidsmønstre
- «Strukturell høvling» lagt til i `guide.univers/effektiv-samhandling-med-ki.md` i begge installasjoner
- «Ask-Plan-Agent» lagt til i samme fil i begge installasjoner
- Plassert etter «Grundig løp»-seksjonen

### Fase 6: Oppia-oppgave
- Opprettet `oppgaver/ki-16-forsterke-oppia-regelgjennomgang.md` i th
- Innhold: modulnivå-surfing, punktnivå-veto, nivåflytting, varsling etter pull

### Fase 7: DRY-restrukturering av inngangshierarkiet

Mål: AGENTS.md og .github/copilot-instructions.md skal begge være tynne pekere. Operativt innhold organisert i tre lag: `velkommen.md` (arbeidsromsvelkomst), `guide.univers/kiitos.md` (universell intro), `guide/kiitos.md` (arbeidsromsspesifikk intro med prosjektoversikt).

**Omdøping:**
- `arbeidsbenk.md` → `velkommen.md` i begge installasjoner (th + hkdir)

**Nye filer:**
- `guide.univers/kiitos.md` opprettet i begge installasjoner (identisk innhold): lagmodell, leserekkefølge, privat innstillingslag, personlige flater, lagregel, viktige begrensninger
- `guide/kiitos.md` opprettet i th: workspace-røtter (6 stk), prosjektkart (14 prosjekter med .kiitos/prosjektinstruks.md-peker), temaområder, kanonisk struktur, prosjektgrupper
- `guide/kiitos.md` omskrevet i hkdir: prosjektnavigasjon (k2-familien med .kiitos-stier), kanonisk struktur, delte arbeidsromfiler

**Slanking av velkommen.md:**
- th: Fjernet prosjektlister, kanonisk struktur, workspace-røtter, prosjektkart, temaområder, prosjektgrupper, migreringsstatus, nivåregel, viktige avgrensninger → erstattet med korte pekere til guide.univers/kiitos.md og guide/kiitos.md
- hkdir: Fjernet lagmodell, full leserekkefølge, prosjektnavigasjon, migreringsstatus, delte arbeidsromfiler, lagregel → erstattet med korte pekere

**Slanking av dispatcher (.github/copilot-instructions.md):**
- th + hkdir: Fjernet alt utover pref-bootstrap, «Før du gjør endringer» (5 steg, ned fra 11), og kanarifugl. Ble tynn peker til velkommen.md → guide.univers/kiitos.md → guide/kiitos.md

**Oppdatering av AGENTS.md:**
- th: Endret `arbeidsbenk.md`-referanse til `velkommen.md`
- hkdir: Har ingen AGENTS.md (forblir uten)

**Referanseopprydding (arbeidsbenk → velkommen/arbeidsrom):**
- 16 filer oppdatert i th: agent002, journal-system, preferanser, installasjon, terminologi, ki-effektiv-arbeidsflyt (4 treff), app-design, kodestandarder, designvalg, systemutvikling, copilot-kiitos-pref-mal, rutiner, samarbeid
- Migreringsmatrise og journalfiler urørt (historisk/append-only)
- hkdir: 0 gjenværende treff (allerede ren etter slanking)

## Status

Alle 6 faser fullført. Verifisert med grep at gammel terminologi er borte fra aktive filer i begge installasjoner.

### Tillegg samme dag: siste opprydding i tynne pekerfiler

- Fjernet siste unødvendige omtale av `.github/copilot-instructions.md` fra `AGENTS.md` i th og hkdir
- La inn tydelig Kiitos-kommentar i `AGENTS.md` og `.github/copilot-instructions.md` i begge installasjoner, med språk om at Kiitos håndterer arbeidsrommet og at pekerfilene bare viser videre til `velkommen.md`
- Verifisert med filsøk at `AGENTS.md` ikke lenger nevner `copilot-instructions.md`
- Editor-diagnostikk rapporterte ingen feil i de fire endrede pekerfilene

### Tillegg samme dag: AGENTS.md på norsk

- Oversatte begge aktive `AGENTS.md`-filer fullt ut til norsk
- Beholdt strukturen tynn og identisk i th og hkdir
- Verifisert med filsøk at de tidligere engelske standardlinjene er borte
- Editor-diagnostikk rapporterte ingen feil i de to endrede filene
