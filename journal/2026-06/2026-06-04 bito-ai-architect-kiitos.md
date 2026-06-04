# KI-instruks 1
> Sjekk https://docs.bito.ai/ai-architect/key-features
>
> Er det noe der av interesse for kiitos?

## Problem: Vurdere Bito AI Architect som inspirasjon for kiitos

Brukeren ba KI sjekke Bito AI Architect sin funksjonsoversikt og vurdere om noe der var interessant for kiitos.

### Analyse

KI leste Bito-dokumentasjonen om nøkkelfunksjoner, kunnskapsgraf og agent skills, og sammenlignet dette med kiitos sin lagmodell, skill-anatomi, instruksintegritet, agentmaler og krediteringspraksis.

### Funn

- Bito sitt mest relevante mønster var relasjonsbasert systemkontekst, ikke selve produktintegrasjonen.
- Bito sine detaljerte agent-spesifikasjoner lignet et mulig kiitos-format for større tverrgående arbeid.
- Auto-triage og fleksible triggere pekte mot en enklere kiitos-regel om kompleksitetsterskel før tyngre agentflyt.
- Automated implementation og automated pull request creation ble vurdert som utenfor scope for kiitos i denne fasen.

### Status

Konklusjon: Bito var relevant som inspirasjon for begreps- og arbeidsformutvikling i kiitos, ikke som verktøyavhengighet.



# KI-instruks 2
> Ja, grav litt i disse sakene, og finn en form som passer bra for kiitos.  Lag en plan for å undersøke og finne noe bra. Føy også til credits for det som vi planlegger å legge til.

## Problem: Plan for kiitos-egne former basert på Bito-mønstre

Brukeren ba KI undersøke Bito-mønstrene videre, finne en form som passer kiitos, lage en plan og ta med kreditering for det som planlegges lagt til.

### Arbeid utført

- Leste eksisterende krediteringsmønster i `CREDITS.md`.
- Leste relevante kiitos-flater: `guide/kiitos.md`, `guide/instruksintegritet.md`, `guide/skill-anatomi.md`, `styringsgrunnlag/designvalg.md` og agentmaler.
- Brukte en lesende speider for å finne kandidatflater, eksisterende mønstre og risikoer.
- Lagret en restartbar plan i sesjonsminne.

### Planlagt kiitos-form

- `sammenhengskart` som kiitos-begrep for eksplisitte koblinger mellom kode, oppgaver, journal, styringsvalg, driftsfunn og andre evidenskilder.
- `arbeidsstrømspesifikasjon` som mulig format for større, uklare eller tverrgående agentarbeid.
- kompleksitetsstyrt agentflyt som prinsipp for når speider, triagering, harmonisering eller review skal brukes.

### Status

Anbefalt første innarbeiding var liten: kreditering og designvalg i fyret først, operativ guide eller skill senere bare ved konkret behov.



# KI-instruks 3
> Start implementation

## Problem: Innarbeide Bito-inspirasjon i kiitos

Brukeren ba KI starte implementeringen av planen.

### Endringer utført

- Oppdaterte `CREDITS.md` med kreditering av Bito AI Architect som inspirasjon.
- Oppdaterte `styringsgrunnlag/designvalg.md` med `DV-KIITOS-20`, `DV-KIITOS-21` og `DV-KIITOS-22`.
- Oppdaterte `guide/termer.md` med termene `Agent spec / agent-spesifikasjon → arbeidsstrømspesifikasjon` og `Knowledge graph → sammenhengskart`.

### Validering

- VS Code-diagnostikk fant ingen feil i berørte filer.
- `git diff --check -- CREDITS.md styringsgrunnlag/designvalg.md guide/termer.md` ga ingen output.

### Status

Første implementeringspuls ble fullført uten å endre skills eller agentmaler. Bito ble innarbeidet som inspirasjon og prinsippnivå, ikke som produktintegrasjon.



# KI-instruks 4
> Generelt: Koble CREDITS til spesifikasjonskoder når de finnes, og bidraget er begrenset.

## Problem: Presisere krediteringspraksis for avgrensede bidrag

Brukeren ga en generell regel om at `CREDITS.md` skal kobles til spesifikasjonskoder når slike finnes og bidraget er begrenset.

### Endringer utført

- Oppdaterte Bito-avsnittet i `CREDITS.md` slik at bidraget peker eksplisitt til `DV-KIITOS-20` til `DV-KIITOS-22`.
- La inn en generell regel under `Ved nye lån`: avgrensede bidrag skal kobles til konkrete spesifikasjonskoder eller andre referansekoder når de finnes.

### Validering

- VS Code-diagnostikk fant ingen feil i `CREDITS.md`.
- `git diff --check -- CREDITS.md` ga ingen output.

### Status

Krediteringspraksisen ble strammet slik at avgrensede eksterne bidrag ikke får bredere opphav enn de konkrete kodene tilsier.



# KI-instruks 5
> Ser bra ut.  Journalfør, commit og sync.

## Problem: Journalføring, commit og sync av Bito/kiitos-endringene

Brukeren godkjente endringene og ba KI journalføre, commite og synke.

### Endringer utført

- Opprettet denne journalfila for Bito/kiitos-saken.
- Journalen dokumenterer undersøkelse, plan, implementering, krediteringsregel og validering.

### Status

Journalen er skrevet og validert. Commit og sync utføres i samme arbeidsøkt etter journalføringen.