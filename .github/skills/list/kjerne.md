# Felles kjerne for list

Denne fila eier den delte modellen for `list`.

Lokal `SKILL.md` i hvert arbeidsrom eier arbeidsromsspesifikke maskiner, lokale tillegg og lokale hint.

Her er alle maskiner du kan aktivere med `/maskin <navn>`.

Denne kjernen eier den synlige inndelingen mellom arbeidsromsspesifikke og universspesifikke maskiner i et arbeidsrom.

## Universspesifikke maskiner

- **`/maskin fortsett`** — Kaldstart: rask re-oppstart med beslutningsgrunnlag og tydelige avklaringsspørsmål
- **`/maskin termer`** — Ordliste og terminologi: strukturert arbeidsflyt for IT-ord, API-kontrakter, dokumentasjon
- **`/maskin journal`** — Journalføring: komplett dialoghistorikk med instrukser, svar og læring på riktig nivå
- **`/maskin verktøy`** — Verktøyhåndtering: installasjon, standardisering, helsesjekk og fallback for terminalverktøy
- **`/maskin oppia`** — Kiitos-læring: finner tilgjengelige moduler i arbeidsrommet, lar brukeren velge hva som skal læres først og går deretter stegvis gjennom planen i batcher på 3-5 med lokal progresjon, godkjenning og anmerkninger. Støtter også vurderingsmodus for erfarne utviklere som vil gi tilbakemelding på delt instrukssett.
- **`/maskin oppia-innspill`** — Oppia-innspill: samler åpne oppia-anmerkninger til et datostemplet, pedagogisk gruppenotat
- **`/maskin utforsk`** — Modulutforsking: viser hva en delt modul i `guide/` gjør, aktiverer den midlertidig for én samtale og spør etterpå om den skal slås på permanent. Uten argument: lister alle tilgjengelige moduler med status.
- **`/maskin regelflyt`** — Regelflyt: flytter regler mellom personlig og delt nivå. `regelflyt senk` gjør delt til personlig; `regelflyt løft` gjør personlig til delt
- **`/maskin integritetsjustere-kiitos`** — Instruksintegritet: kontrollerer aktive kiitos-flater for konsistens, lagvis DRY, korrekthet og rask oppslagsbarhet. Også tilgjengelig som `/maskin dry` for ren DRY-støvsuging
- **`/maskin kalibrere-minner`** — Kalibrering: sammenholder permanent internt minne mot aktive instrukser, løfter delbar kunnskap og rydder redundante minner

## Felles hint

Jeg foreslår relevante maskiner automatisk når situasjonen passer:

- **Etter pause eller kaldstart:** `/maskin fortsett`
- **Engelske ord:** `/maskin termer`
- **Avslutning av økt / "Avslutt":** `/maskin journal`
- **Verktøy/terminal/Scoop/alias:** `/maskin verktøy`
- **Ny kollega, påmønstring, prosjektoppstart eller systematisk gjennomgang av kiitos:** `/maskin oppia`
- **Nye eller endrede kiitos-regler etter git pull:** `/maskin oppia` (varsling skjer automatisk ved samtalens start)
- **Vil utforske en enkelt kiitos-modul uten forpliktelse:** `/maskin utforsk`
- **Åpne anmerkninger fra oppia som skal samles til et gruppeinnspill:** `/maskin oppia-innspill`
- **Delt regel som egentlig er personlig, eller personlig mønster som bør deles:** `/maskin regelflyt`
- **Restduplisering, overlappende pekere eller uklart faktaeierskap:** `/maskin dry` (→ integritetsjustere-kiitos)
- **Aktive instruksflater som har driftet, fått uklare pekere eller blitt tunge å slå opp:** `/maskin integritetsjustere-kiitos`
- **Skjult eller redundanspreget internhukommelse som bør ryddes eller løftes:** `/maskin kalibrere-minner`

**Kort:** Skriv `/maskin <navn>` når du vil aktivere en. Jeg husker hva som skal skje.