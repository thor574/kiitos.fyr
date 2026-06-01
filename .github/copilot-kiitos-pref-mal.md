# Mal: Kiitos-pref for denne utvikleren

Hvis du ser denne fila manuelt: dette er bare malen, ikke den lokale pref-fila som brukes i arbeidshverdagen.

Slik trigges opplegget:

- Hvis `.github/copilot-kiitos-pref.md` mangler og du starter en Copilot-samtale i dette lauget, skal KI lese denne malen, stille bare de spørsmålene som trengs og opprette pref-fila.
- Du kan også be KI eksplisitt om å opprette eller oppdatere `.github/copilot-kiitos-pref.md` fra denne malen.
- Ikke legg personlige valg direkte i denne malen med mindre du faktisk vil endre den delte bootstrapen for senere oppretting.

Denne filen `.github/copilot-kiitos-pref-mal.md` er den innsjekkede malen for `.github/copilot-kiitos-pref.md`.
Den lokale filen er privat, ignorert av Git og skal kunne opprettes av KI når den mangler.

`copilot-pref.md` kan eksistere ved siden av som valgfri lokal Copilot-pref utenfor kiitos-modellen. Kiitos-spesifikke personvalg i dette lauget skal likevel ligge i `.github/copilot-kiitos-pref.md`.

## Hvordan KI bruker malen

- Les denne malen når `.github/copilot-kiitos-pref.md` mangler.
- Still bare de spørsmålene som trengs for å lage en rimelig førsteversjon.
- Opprett deretter `.github/copilot-kiitos-pref.md` og bruk den i senere samtaler.
- Ikke legg passord, tokens eller andre hemmeligheter i denne malen eller i den lokale filen.

## Installasjonsframdrift

- Denne seksjonen sporer hvor langt utvikleren har kommet i installasjon av kiitos.
- KI kan krysse av faser etterhvert som de fullføres, og legge til dato.
- Når alle påkrevde faser er fullført, trenger ikke KI spørre om installasjon igjen.
- Se `kiitos.fyr/guide/installasjon.md` for detaljer om hver fase.

- [ ] Fase 1 — Grunnoppsett (workspace, KI-samtale, MCP)
- [ ] Fase 2 — Etterkontroll (verifisering)
- [ ] Fase 3 — Personalisering *(valgfritt)*
- [ ] Fase 4 — Prosjekt og laug *(ved behov)*

## Kommunikasjonsstil

- Når den lokale pref-fila opprettes første gang, skal KI kort forklare forskjellen mellom samtaleformene under og be utvikleren velge en.
- Hvis utvikleren ikke vil velge med en gang, bruk `direkte og varm` som midlertidig standard.
- Samtaleform:
	- `direkte og knapp`: kort, tydelig og lite innpakning
	- `direkte og varm`: tydelig og ærlig, men med mykere ordvalg
	- `utforskende og forsiktig`: mer avklarende, med flere forbehold og mykere landing
	- `annet`: utvikleren beskriver ønsket form selv
- Valgt samtaleform: [direkte og knapp | direkte og varm | utforskende og forsiktig | annet]

- Svarstil: [gå rett på sak | kort innledning | annet]
- Avklaringer: [bare når nødvendig | tidlig og ofte | annet]
- Forbedringsforslag: [etter godkjenning | underveis | annet]
- Detaljeringsnivå: [kortfattet | balansert | utfyllende]

## Kanarifugl på siste linje

- Hensikt: En fast siste linje fungerer som en liten kanarifugl for utvikleren. Den gjør det lett å se at svaret kom helt fram, at sluttinstruksen fortsatt følges og at den personlige pref-fila faktisk er lest.
- Regel: Kanarifugl-linjen skal stå helt til slutt i hvert svar.
- Aktiv kanarifugl-linje: [skriv ønsket linje her]
- Teksten kan gjerne være personlig kraftstyrkende, inspirerende eller motiverende hvis det passer utvikleren.

Mulige kandidater hvis utvikleren ikke vil skrive sin egen med en gang:

- Instruksene vibrerer harmonisk til systemutviklerens sang
- Kanarifuglen kvitrer, og lauget holder kursen
- Styretråden er hel, og kiitos går støtt videre
- Signalet lever, og svarsløyfen er intakt
- Lauget nynner lavt, og alt er i rute
- ...OO...

## Påmønstringsmodus

- Denne seksjonen styrer hvor aktivt kiitos oppfører seg for denne utvikleren.
- `stille`: Bare dispatcher og denne pref-fila er aktiv. Alle moduler i `guide/` er `av` med mindre utvikleren eksplisitt har satt dem til `på` eller `ved behov` i modulvalget under. KI holder seg unna delte guider og lar utviklerens eget opplegg (f.eks. `copilot-pref.md`) styre. Maskiner er tilgjengelige, men KI tilbyr dem ikke uoppfordret.
- `utforskende`: Som `stille`, men KI nevner kort (én setning) når en modul *ville vært relevant* for den aktive saken. Utvikleren kan da velge å slå den på, utforske den med `/maskin utforsk`, eller ignorere hintet. Moduler som er satt til `av` nevnes ikke.
- `standard`: Moduler som ikke er eksplisitt satt behandles som `ved behov`. KI leser delte guider når saken treffer dem. Dette er oppførselen for utviklere som vil ha full kiitos fra start.
- Påmønstringsmodus: [stille | utforskende | standard]

## Journalføring i introperioden

- Dette valget styrer hvordan journalføring normalt skal starte for en ny utvikler før arbeidsmåten sitter.
- `Privat mappe` betyr at KI skal foretrekke en separat privat mappe i introperioden før journalføring eventuelt løftes inn i de delte kiitos-lagene.
- `Fordelt utover i kiitos-lagene` betyr at KI skal bruke den vanlige modellen fra start og journalføre på riktig nivå i `journal/` (fyr eller laug) eller prosjekt.
- Journalføringsstart: [Privat mappe | Fordelt utover i kiitos-lagene]

## Delte moduler

- Denne seksjonen styrer hvilke delte moduler i `guide/` som normalt skal brukes for denne utvikleren.
- `på` betyr at KI alltid skal lese modulen ved samtalestart når saken kan treffe den.
- `ved behov` betyr at KI skal lese modulen bare når saken tydelig trenger den.
- `av` betyr at KI ikke skal lese modulen uten eksplisitt beskjed fra bruker eller fra en mer spesifikk aktiv instruksfil.
- Standardverdi for moduler som ikke er satt avhenger av påmønstringsmodus: i `stille` og `utforskende` er standarden `av`, i `standard` er standarden `ved behov`.
- `guide/preferanser.md` er del av kjernemodellen og styres ikke her.
- Bruk `/maskin utforsk <modulnavn>` for å utforske en modul i én samtale før du bestemmer deg.

### Modulvalg

- `effektiv-samhandling-med-ki.md`: [på | ved behov | av]
- `journal-system.md`: [på | ved behov | av]
- `ki-verktoy-og-oppsett.md`: [på | ved behov | av]
- `oppgave-parkering.md`: [på | ved behov | av]
- `termer.md`: [på | ved behov | av]
- `terminologi.md`: [på | ved behov | av]

## Arbeidsform

- Endringsomfang: [én fil om gangen | flerfilsarbeid | varierer]
- Endringskontroll: [streng | moderat | fleksibel]
- Ved mange revisjoner: [stopp og foreslå nullstilling | fortsett til løst | varierer]

## Verktøykontekst

- Primær IDE: [MyEclipse | IntelliJ IDEA | Visual Studio Code | annet]
- Viktige arbeidsflater/prosjekter: [fyll inn]
- IDE-spesifikke notater: [fyll inn]
- Verktøy KI trygt kan anta er installert lokalt: [fyll inn]
- Verktøy som mangler lokalt eller ikke skal foreslås som standard: [fyll inn]

## Kodestil

- Kommentarer: [minimalt | moderat | omfattende]
- Feilhåndtering: [defensive sjekker | pragmatisk | trust-first]

## Lokale huskeregler

- [fyll inn med korte, personlige huskeregler]

## Hører ikke hjemme her

- API- og databasekontrakter
- Delte søkeregler og laugfakta
- Prosjektpraksis som flere utviklere må kunne gjenbruke
- Sensitiv informasjon eller lokale hemmeligheter

Slike regler løftes med `/maskin regelflyt løft` til `guide/`, laugroten eller prosjektets lokale `.kiitos/`.