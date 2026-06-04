# Spesifisert kunnskap

Denne støttefila er særlig nyttig for folk som kjenner programutvikling, men ideen er enkel nok for alle: når noe skal gjentas presist, må noe av kunnskapen skrives ned.

## Er programkode spesifisert kunnskap?

Ja, i praktisk forstand.

Programkode er ikke all kunnskap om et område. Den er heller ikke sannhet i seg selv. Men kode er kunnskap, beslutninger og antakelser gjort presise nok til at en maskin kan utføre dem.

Når vi skriver kode, spesifiserer vi oppførsel:

- Hvis dette er inndata, skal dette skje.
- Hvis noe mangler, skal systemet reagere slik.
- Hvis en regel gjelder, skal den brukes på denne måten.

Derfor er kode en kraftig form for skrevet kunnskap: den kan kjøres.

## Tester som tvangstrøye

I programutvikling bruker vi enhetstester og testdrevet utvikling for å styre kode.

En enhetstest er testkode som sjekker at programkoden gjør det den skal. Den kjører programkoden med bestemte inndata og kontrollerer at utdata eller oppførsel blir som avtalt.

Det fungerer som en tvangstrøye for programkoden:

- ønsket oppførsel blir eksplisitt
- uønsket oppførsel blir fanget opp
- endringer kan kontrolleres hver gang testene kjøres

Testene gjør ikke koden automatisk riktig, men de gir en tydeligere avtale om hva riktig betyr.

## Tester som dokumentasjon

Enhetstester er også en form for dokumentasjon. Ikke full dokumentasjon, men kjørbar dokumentasjon av forventet oppførsel.

Dette er nyttig for mennesker, og det kan også være nyttig for KI. Når KI leser gode tester, ser den konkrete eksempler på hva koden skal gjøre, hvilke inndata som betyr noe, hvilke utdata som forventes, og hvilke kanttilfeller noen allerede har brydd seg om.

Forbeholdet er viktig: tester kan være ufullstendige, gamle eller for smale. De dokumenterer ikke hele systemet. Men når testene er gode og oppdaterte, er de ofte mer presise enn fritekst fordi de både beskriver og kontrollerer oppførsel.

## Parallellen til KI

KI-samarbeid har ikke en like presis tvangstrøye som programkode og tester.

Men vi har noe som virker i samme retning: oppstartsfiler, instrukser, mål, preferanser, begreper, oppgaver og journaler som KI kan lese.

Når KI leser slike filer ved oppstart eller etter behov, får den mer presis kontekst:

- hva arbeidet handler om
- hva målet er
- hvilke regler som gjelder
- hvilke preferanser brukeren har
- hvilke tidligere valg som bør respekteres
- hvilke filer eller prosjekter som er relevante

Dette garanterer ikke riktig svar. KI må fortsatt kontrolleres. Men min erfaring er at vi kan komme langt når mer av retningen er skrevet ned.

## Viktig forskjell

Tester kan si ganske presist om kode brøt en avtale.

KI-instrukser styrer mer mykt. De gjør samarbeid bedre, men de fjerner ikke behovet for lesing, vurdering og korrigering.

Derfor er kiitos ikke en erstatning for kontroll. Kiitos er en måte å gi KI bedre arbeidsgrunnlag før kontrollen skjer.

## Hvor lagdeling kommer inn

KI leser fra innholdet den ser. Det betyr at riktig innhold må være tilgjengelig, men ikke alt innhold er relevant overalt.

Kiitos er i dag brukt til programutvikling for ulike systemer. Da er lagdeling nyttig:

- generell arbeidsmåte kan ligge felles
- faggruppe- og avdelingskunnskap kan ligge i laget
- prosjektkunnskap kan ligge nær prosjektet
- personlige preferanser kan ligge privat

Slik får KI mer relevant kontekst uten at alt blandes sammen.