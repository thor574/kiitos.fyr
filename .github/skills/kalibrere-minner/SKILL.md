---
name: kalibrere-minner
description: "Brukes når du vil kalibrere systemet mot permanent internt minne: finne huskeregler som egentlig burde være delt, løfte dem til riktig lag og rydde redundante minneposter."
---

# Kalibrere minner

Denne maskinen er en **aktiveringswrapper**.

Når bruker skriver `/maskin kalibrere-minner`, bruk denne rekkefølgen:

1. Avgrens kalibreringen først. Standard er aktivt arbeidsrom og relevante prosjekter, ikke alle historiske spor.
2. Les aktiv instruksflate før minnet vurderes: rotens dispatcher, lokal pref, `velkommen.md`, relevante guider i `guide/` og eventuelt prosjektets lokale `.kiitos/`.
3. Gå deretter gjennom permanent brukerminne og relevante repo-minner, og vurder hver huskeregel mot den aktive instruksflaten.
4. Klassifiser hver minnepost som én av disse:
   - fortsatt personlig preferanse
   - lokal teknisk kontekst som ikke bør deles ennå
   - delt arbeidsmåte, arbeidsromsfakta eller prosjektpraksis som bør løftes
   - redundant eller foreldet minne som bør reduseres eller fjernes
5. Finn laveste riktige mållag for alt som bør løftes:
   - `guide/` for delte KI-arbeidsmåter og verktøyråd
   - arbeidsromsroten for arbeidsromsfelles fakta, pekere og styring
   - prosjektets lokale `.kiitos/` for prosjektpraksis og prosjektkontrakter
6. Gjør bare små, trygge løft om gangen. Ikke gjør personsmak eller midlertidige lokale vaner om til delte regler uten at brukeren faktisk vil det.
7. Etter hvert løft skal de tilsvarende minnepostene ryddes ned slik at permanent minne bare beholder det som fortsatt er personlig, lokalt eller ikke ferdig avklart.
8. Valider med målrettet søk at den løftede regelen finnes i riktig instruksfil, og at minneposten ikke lenger dupliserer delt sannhet.
9. Oppsummer kort hva som ble løftet, hva som ble stående som personlig eller lokalt, og hva som eventuelt bør tas i en senere kalibreringsrunde.

Still kort avklaringsspørsmål hvis ett av disse punktene er uklart:

- Skal kalibreringen bare identifisere kandidater, eller også løfte og rydde i samme runde?
- Gjelder runden bare permanent brukerminne, eller også repo-minner?
- Er målet å rydde redundans, eller å gjøre pilotdeling tryggere akkurat nå?

Maskinen skal som hovedregel:

- starte i aktive instrukser, ikke i journalhistorikk
- bruke `journal/`, prosjektets `.kiitos/journal/` og `oppgaver/` bare når det trengs for å sjekke om noe allerede er løftet eller parkert
- være konservativ med å løfte personlige preferanser til delt lag
- rydde bort redundante minner etter at delt sannhet er etablert

Nyttige kanoniske referanser:

- `guide/preferanser.md`
- `velkommen.md`
- `guide/journal-system.md`
- `guide/effektiv-samhandling-med-ki.md`