# KI-instruks 1
> Lag en fantastisk intro til kiitos i hele virksomheten, for alle, uansett bakgrunn.
>
> Ting jeg vil ha med;
> - Hovedbudskapet om at dette ikke er mer vanskelig enn at alle kan gjøre dette, på hver sin kant, for seg og sine egne behov og retninger.
> - Jeg vil først gå gjennom hvordan alle kan bygge dette, og deretter hva effektene av det har vært for meg.  Nei, jeg tror det er bedre pedagogisk om jeg tar dette i omvendt rekkefølge, så folk blir først motivert, så de kan få med seg flere detaljer etterpå.  Men viktig også å flytte de fleste detaljene ut i noen filer i kiitos.fyr som de kan nå i etterkant av introen, hvis de er interessert nok, så kun grunnideene gis i introen, og at den derfor blir overraskende kort, men etterlater en effektivt forståelse av hva kiitos er, hva nytten er, og hvordan de kan starte.
> - For meg personlig, har kiitos vært en måte å kunne anvende flere deler av min kunnskap gjennom mange år på, i et generelt rammeverk, som hjelper meg selv framover, og som potensielt kan hjelpe mange andre framover.  Men de må bygge det selv, for vi er ulike.  Bare folk selv kan finne ut hvilke mål de setter seg, hvilke visjoner de har, og hvilken retning de har, og hvilke preferanser de har.
> - Å kunne bruke min unike bakgrunn og sett at dette gir nyttig effekt på min egen effektivitet er svært tilfredsstillende.
> - Generelt er det nyttig å endre bruksmåten sin litt; Jo mer som er skriftlig spesifisert for KI, jo bedre arbeid gjør den.  Dette gjøres fint over tid.  Og KI kan gjøre det meste av skrivejobben, og en selv kan lese og godta/korrigere, men en må også selv gir klar retning og mål.
> - En kan be KI strukturert lagre filer av ideer, oppgaver, mål, visjoner, behov, bruksmåter og annet,  så de er lesbare for begge to (KI og du).
> - En kan be KI lage en fil som den leser ved hver oppstart i en samtale, som peker til andre filer som kan leses etter behov (organisert i ulike tema).
> - Være klar over når en strukturerer kunnskap:  Kunnskap om mål/retning/praksis avhenger av område (domene); Noe kunnskap er knyttet til selskapet, noe til divisjon/avdelingen, noe til industrien/faget/faggruppen, noe til en selv.  - Dette har gjort at jeg har delt inn kiitos i fire deler; generelt, faggruppen, de enkelte prosjektene og personlig.
> - Jeg ønsker å følge Steve Jobs sin presentasjonsstil, med enkle stilistiske visuelle virkemidler, og forklaringer som gir et enkelt, tydelig og tungt budskap.
>
> Vi har noen introer fra før.  Dette vil jeg lage en separat del på.  Det skal inn i kiitos.fyr.
>
> Journalfør samtalen løpende.

## Problem: Virksomhetsintro til kiitos

Brukeren ba om en kort, tydelig og motiverende intro til kiitos for hele virksomheten, med effekter først og byggedetaljer etterpå. Introen skal ligge som en separat del i `kiitos.fyr`, mens detaljene flyttes til støttefiler som kan leses etter introen.

### Første avklaring

- Eksisterende universintro ligger i `guide/kiitos.md` og er mer operativ/teknisk enn presentasjonsrettet.
- Riktig lag er fyret, fordi innholdet gjelder kiitos som universell arbeidsmåte på tvers av laug og prosjekter.
- Arbeidet starter med én kort presentasjonsflate og støttefiler for oppfølging etter introen.

### Status

Pågående.

### Arbeid utført

- Opprettet [LESMEG.md](../../LESMEG.md) som menneskevendt startflate og navigasjon inn i kiitos.
- Opprettet [guide/virksomhetsintro/README.md](../../guide/virksomhetsintro/README.md) som kort virksomhetsintro med enkel presentasjonsform, motivasjon først og detaljer etterpå.
- Opprettet [guide/virksomhetsintro/bygg-din-kiitos.md](../../guide/virksomhetsintro/bygg-din-kiitos.md) som støttefil for å starte med egen mappe, startfil og gradvis strukturering.
- Opprettet [guide/virksomhetsintro/lag-og-domener.md](../../guide/virksomhetsintro/lag-og-domener.md) som støttefil for kunnskap etter område: virksomhet/selskap, divisjon/avdeling, industri/fag/faggruppe, prosjekt og personlig.
- Oppdaterte [README.md](../../README.md) og [guide/kiitos.md](../../guide/kiitos.md) med pekere til den nye virksomhetsintroen.

### Validering

- `git diff --check` er kjørt for journalfila og de nye/endrede introfilene uten funn.
- VS Code-diagnostikk er kjørt for de nye/endrede Markdown-filene uten funn.
- Lenkemål for de viktigste nye pekerne er kontrollert med `Test-Path` uten manglende filer.

### Sluttstatus

Fullført. Introen ligger som en separat del i `kiitos.fyr/guide/virksomhetsintro/`, med korte grunnideer i hovedintroen og detaljer i støttefiler.



# KI-instruks 2
> Brukeren ba om vurdering av flere mulige tillegg til virksomhetsintroen. Ordrett tekst inneholdt personlige helse- og livsdetaljer og er derfor ikke skrevet inn i delt fyr-journal. Ordrett journalføring er lagt privat i `kiitos.ruff.th/journal/2026-06/2026-06-04 virksomhetsintro-kiitos-personlig-tillegg.md`.

## Problem: Vurdere tillegg til virksomhetsintroen uten å gjøre den tung eller privat

Brukeren foreslo flere mulige tillegg: en personlig historie om å kaste seg ut i ting, en mulig kunnskapsvinkel, en parallell mellom programkode/tester og KI-instrukser, og en presisering av at KI arbeider fra innholdet den ser.

### Vurdering

- Prinsippet «kaste seg ut i det» passer godt som muntlig eller valgfri personlig åpning, men konkrete private detaljer hører ikke hjemme i delte fyr-filer.
- Kunnskapspoenget bør brukes uten elitistisk formulering; hovedsaken er at erfaring og faglig nysgjerrighet blir mer nyttig når den gjøres lesbar for KI.
- Programkode/tester-analogien er sterk, men for detaljert for hovedintroen. Den passer best som støttefil for teknologinære lesere.
- Presiseringen om at KI arbeider fra innholdet den ser bør inn i både hovedintro og lag-/domene-forklaring.

### Endringer utført

- Oppdaterte [guide/virksomhetsintro/README.md](../../guide/virksomhetsintro/README.md) med valgfri «Kast deg ut i det»-åpning, tydeligere kontekstbudskap og justert kunnskapspoeng.
- Opprettet [guide/virksomhetsintro/spesifisert-kunnskap.md](../../guide/virksomhetsintro/spesifisert-kunnskap.md) om programkode, tester, testdrevet utvikling, KI-instrukser og lagdeling.
- Oppdaterte [guide/virksomhetsintro/lag-og-domener.md](../../guide/virksomhetsintro/lag-og-domener.md) med kort forklaring av at KI leser et utsnitt.
- Oppdaterte [LESMEG.md](../../LESMEG.md) med peker til den nye støttefila.

### Status

Fullført. `git diff --check` og VS Code-diagnostikk er kjørt for de berørte delte fyr-filene uten funn.



# KI-instruks 3
> Ja, commit dette.

Brukeren ba om commit av virksomhetsintro-endringene. Det lages én commit i `kiitos.fyr` for delte intro- og journalendringer, og én commit i `kiitos.ruff.th` for privat journalføring av personlige detaljer.



# KI-instruks 4
> Ta en runde og vurder dette fra mottakerne.  Får de en god opplevelse uten altfor mye detaljer?  Kan vi kutte ut noe?

## Problem: Mottakerreview av virksomhetsintroen

Brukeren ba om en vurdering av introen sett fra mottakernes side, med særlig vekt på om opplevelsen er god nok uten for mye detaljering, og om noe bør kuttes.

### Vurdering

Hovedideen var god, men hovedintroen hadde fortsatt litt for mye dokumentpreg for en førsteopplevelse. Den hadde åtte nummererte stopp pluss valgfri personlig åpning, og flere av poengene gjentok hverandre: personlig retning, ikke kopiere strukturen, og at skriftlig retning virker.

Mottakerhypotesen er at introen fungerer bedre som seks klare øyeblikk:

- KI arbeider fra det den ser.
- Kiitos gjorde mer av egen kunnskap brukbar i arbeidet.
- Mottakeren må eie sin egen retning.
- Én startfil er nok for å begynne.
- Kunnskap bør ligge på riktig nivå.
- Start med det du vil slippe å forklare på nytt.

### Endringer utført

- Kuttet egen «Valgfri personlig åpning»-seksjon og flettet «kast deg ut i det»-poenget inn i «Hva det ga meg».
- Kuttet hovedintroen fra åtte til seks presentasjonsdeler.
- Slo sammen «Det starter personlig» og «Det er ikke et ferdig system» til «Du eier retningen».
- Slo sammen «Hvorfor det virker» og «Kunnskap har område» til en kortere del om riktig kunnskap på riktig sted.
- Markerte [spesifisert-kunnskap.md](../../guide/virksomhetsintro/spesifisert-kunnskap.md) som teknologinær etterlesning, ikke generell førstevei.
- Oppdaterte [LESMEG.md](../../LESMEG.md) med samme teknologinære merking.

### Validering

- `git diff --check` er kjørt for [guide/virksomhetsintro/README.md](../../guide/virksomhetsintro/README.md) og [LESMEG.md](../../LESMEG.md) uten funn.
- VS Code-diagnostikk er kjørt for de samme filene uten funn.

### Status

Fullført. Hovedintroen er kortere og mer mottakerrettet, mens detaljene fortsatt ligger i støttefilene.



# KI-instruks 5
> Dette med enhetstester er jo også dokumentasjon av koden; dette er nyttig også for KI tror jeg.  Er det sant?  Dette kan være nyttig å ha med, hvis sant.

## Problem: Avklare om enhetstester bør omtales som dokumentasjon for KI

Brukeren spurte om enhetstester også er dokumentasjon av koden, og om dette er nyttig for KI.

### Vurdering

Ja, med forbehold. Enhetstester er ikke full dokumentasjon, men de er kjørbar dokumentasjon av forventet oppførsel. For KI kan gode tester være nyttige fordi de viser konkrete eksempler på inndata, forventet utdata, kanttilfeller og hvilke oppførsler som allerede er avtalt. Tester kan likevel være ufullstendige, utdaterte eller for smale, så KI og mennesker må fortsatt vurdere dem kritisk.

### Endringer utført

- Oppdaterte [guide/virksomhetsintro/spesifisert-kunnskap.md](../../guide/virksomhetsintro/spesifisert-kunnskap.md) med en kort seksjon om tester som dokumentasjon for mennesker og KI.

### Status

Fullført. `git diff --check` og VS Code-diagnostikk er kjørt for støttefila og journalen uten funn.



# KI-instruks 6
> Flott!  commit.

Brukeren ba om commit av siste innstramming av virksomhetsintroen. Endringene committes i `kiitos.fyr`.