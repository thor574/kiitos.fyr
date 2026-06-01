# KI-instruks 1
> Implementer den godkjente planen i workspace-roten `kiitos.hkdir/arbeidsrom.kanalregistrene`. Du skal skrive kode/filer direkte i workspace, ikke bare gjøre research.
>
> Mål:
> - Lag ny delbar maskin med navn `integritetsjustere-kiitos`.
> - Maskinen skal kontrollere hele kiitos-installasjonen inkl. prosjektlokale `.kiitos/`-flater, men som standard utelate `journal/`, `journal.univers/`, `oppgaver/`, `oppgaver.mine/`, `analyse/` og historiske/parkerte flater.
> - Maskinen skal være en aktiveringswrapper som leser en kanonisk guide for selve kontrollreglene.
> - Kontrollen skal dekke: konsistens, lagvis DRY, korrekthet og rask oppslagsbarhet.
> - Nytt krav om at operative instruksfiler skal være raskt oppslagsbare skal registreres som designvalg, ikke ARV.
> - Registrer maskinen i den delte maskinlisten.
> - Journalfør satsen på riktig nivå.
>
> Konkrete forventede endringer:
> 1. Opprett en ny delt guide under `guide.univers/`, anbefalt filnavn `instruksintegritet.md`, som eier kontrollaksene, standardomfang, standardutelatelser, klassifisering av avvik og forholdet til andre maskiner (`dry`, `fellesregel`, `kalibrere-kiitos`). Guiden må være rask å slå opp i og tydelig om stoppsignaler.
> 2. Oppdater `styringsgrunnlag/designvalg.md` med et nytt lokalt designvalg om at operative instruksfiler skal være raskt oppslagsbare. Koble det naturlig til eksisterende DV-LOK-ARB-09, 10, 11 og 21. Ikke endre ARV-fila.
> 3. Opprett `.github/skills/integritetsjustere-kiitos/SKILL.md` som aktiveringswrapper etter mønster av eksisterende maskiner som `dry` og `fellesregel`.
> 4. Oppdater `.github/skills/list/kjerne.md` med ny universspesifikk maskin og relevant hint.
> 5. Legg bare inn ekstra krysspeker i inngangsflater hvis det tydelig forbedrer oppdagbarhet uten å duplisere regler.
> 6. Opprett journalføring under `journal.univers/2026-05/` datostemplet 2026-05-17 for denne satsen.
>
> Arbeidsregler:
> - Følg eksisterende språk og mønstre i kiitos. Norsk bokmål.
> - Hold endringene minimale og lagvis DRY.
> - Ikke endre andre prosjekter eller søsterarbeidsrom.
> - Bruk eksisterende wrapper-mønster for skills.
> - Ikke gjør brede omskrivinger utover dette sporet.
>
> Validering du skal prøve å gjøre:
> - Sjekk editor-/diagnostikkfeil på endrede filer hvis mulig.
> - Bekreft med målrettet søk at `integritetsjustere-kiitos` finnes både som egen maskin og i maskinlisten.
> - Bekreft at designvalget om oppslagsbarhet finnes.
>
> Rapporter tilbake:
> - Hvilke filer du endret/opprettet.
> - Kort hvorfor du valgte eventuelle ekstra krysspekere eller hvorfor du lot være.
> - Hva du validerte og eventuelle åpne risikoer.

## Problem: Etablere delt maskin for instruksintegritet i kiitos

Oppgaven krevde en ny delbar maskin som kan kontrollere én kiitos-installasjon innenfra, med selve kontrollreglene flyttet ut i en kanonisk guide. Samtidig måtte et nytt normativt krav om rask oppslagsbarhet registreres som designvalg på arbeidsromsnivå, ikke som historisk arkitekturvalg.

### Symptomer / Årsak / Løsningsstrategi

Det fantes allerede tydelige wrapper-mønstre for maskiner som `dry`, `fellesregel` og `kalibrere-kiitos`, men ingen samlet eierflate for instruksintegritet som kombinerte konsistens, lagvis DRY, korrekthet og oppslagsbarhet. Løsningen ble derfor å legge kontrollaksene i en ny delt guide, la den nye maskinen være en tynn aktiveringswrapper, registrere oppslagsbarhet som eget designvalg og bare legge inn én kort ekstra krysspeker i universintroen fordi den gir bedre oppdagbarhet uten regelduplisering.

### Endringer Utført

- [../../guide.univers/instruksintegritet.md](../../guide.univers/instruksintegritet.md) - ny kanonisk guide som eier kontrollakser, standardomfang, standardutelatelser, avviksklassifisering, arbeidsrekkefølge, stoppsignaler og forholdet til `dry`, `fellesregel` og `kalibrere-kiitos`
- [../../styringsgrunnlag/designvalg.md](../../styringsgrunnlag/designvalg.md) - oppdatert revisjonsdato og lagt inn `DV-LOK-ARB-22` om at operative instruksfiler skal være raskt oppslagsbare, koblet til `DV-LOK-ARB-09`, `DV-LOK-ARB-10`, `DV-LOK-ARB-11` og `DV-LOK-ARB-21`
- [../../.github/skills/integritetsjustere-kiitos/SKILL.md](../../.github/skills/integritetsjustere-kiitos/SKILL.md) - ny aktiveringswrapper som peker til kanonisk guide og bruker samme arbeidsmønster som de eksisterende maskinene
- [../../.github/skills/list/kjerne.md](../../.github/skills/list/kjerne.md) - registrert ny universspesifikk maskin og nytt hint for når den bør foreslås
- [../../guide.univers/kiitos.md](../../guide.univers/kiitos.md) - la inn én kort peker til den nye guiden i `Videre`-seksjonen for raskere oppdagbarhet

### Validering

- Kjørte editor-/diagnostikksjekk på de nye og endrede Markdown-filene.
- Kjørte målrettet søk etter `integritetsjustere-kiitos` for å bekrefte både egen skill og registrering i maskinlisten.
- Kjørte målrettet søk etter `oppslagsbar` og `oppslagsbarhet` for å bekrefte at det nye designvalget og guiden faktisk bruker den nye normen.

### Status

✅ Fullført som en smal sats i arbeidsromsroten. Bare én ekstra krysspeker ble lagt inn, fordi den forbedrer oppdagbarheten uten å duplisere regler.



# KI-instruks 2
> OBS. Jeg ser du har lokale programbaner i noen filangivelser. Det er uheldig å ha absolutte stier til programmapper. Hvis du ønsker å henvise til `kiitos.hkdir` så bruk det som toppnavn. Ditto med prosjektfiler, bruk deres logiske navn i dette arbeidsrommet. Gjør en grundig endring, også i historikk.

## Problem: Normalisere filangivelser til logiske toppnavn

Den nye maskinsatsen hadde én fersk journaloppføring med maskinlokal absolutt sti, og det fantes også noen eldre historikkfiler som fortsatt brukte lokale Windows-baner i filangivelser og arbeidsromsbeskrivelser. Dette var uheldig både for delbarhet og for den nye normen om rask oppslagsbarhet.

### Endringer Utført

- Oppdaterte denne journalen slik at arbeidsromsroten omtales med det logiske toppnavnet `kiitos.hkdir/arbeidsrom.kanalregistrene` i stedet for en lokal Windows-bane.
- Oppdaterte [../../guide.univers/instruksintegritet.md](../../guide.univers/instruksintegritet.md) slik at maskinlokale absolutte stier nå er eksplisitt klassifisert som integritetsavvik, og at raske oppslag skal bruke logiske toppnavn i arbeidsrommet.
- Oppdaterte [../../journal/2026-01/2026-01-15 organisering av instruksjoner og journal.md](../../journal/2026-01/2026-01-15%20organisering%20av%20instruksjoner%20og%20journal.md) slik at historiske filangivelser bruker `k2` og `.github/journal/` i stedet for lokale `c:\Utvikle`-baner.
- Oppdaterte [../../journal/2026-02/2026-02-26-hkdirweb-commit-message-analyse.md](../../journal/2026-02/2026-02-26-hkdirweb-commit-message-analyse.md) slik at analysen viser til `k2` som logisk arbeidsromsnavn i stedet for lokal programsti.
- Oppdaterte [../../journal/2026-05/2026-05-03 flatting-av-kiitos-og-journalformat.md](../../journal/2026-05/2026-05-03%20flatting-av-kiitos-og-journalformat.md) slik at historisk advarsel nå peker generelt på lokale programstier og `benk.*`-navn, uten å bruke konkret maskinbane.

### Validering

- Kjørte målrettet restsøk etter lokale absolutte baneangivelser i arbeidsrommet.
- Bekreftet at de gjenstående historiske filangivelsene nå bruker logiske toppnavn som `kiitos.hkdir`, `k2`, `k1`, `kdb`, `npi` og de fire K2API-prosjektene der dette var relevant.

### Status

✅ Fullført som oppfølgingsretting av filangivelser og historikk.