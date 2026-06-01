# KI-instruks 1
> Kan en utvide installasjonstrinnene med at utvikleren setter opp en forbindelse til github issues?  Vi har en mcp fil men trenger sikkert at utvikleren føres trygt gjennom den prosessen.

## Problem: Manglende MCP-oppsettsveiledning i installasjon.md

Installasjonsveiledningen manglet instrukser for å sette opp GitHub MCP-tilkobling. Arbeidsrommet hadde allerede `.vscode/mcp.json` i `kiitos.lag.kanalregistrene`, men nye utviklere ble ikke ledet gjennom oppsettet.

### Endringer utført
- [guide/installasjon.md](../../guide/installasjon.md) — Nytt avsnitt «GitHub Issues via MCP» med forutsetninger, trinnvis oppsett, tilgjengelige funksjoner og feilsøkingstabell. Lagt til steg 7 i Nivå 1 som peker til MCP-seksjonen.

### Status
✅ Fullført



# KI-instruks 2
> Hvordan er forbindelsen mellom at ny utvikler gjør installasjonen, og det vi la inn nå?  Blir denne delen automatisk presentert for utvikleren når det er tid for det?

MCP-seksjonen var en frittstående seksjon uten referanse fra hovedflyten. Utvikleren måtte scrolle ned på egen hånd. Løst ved å legge til steg 7 i Nivå 1 som eksplisitt peker til MCP-seksjonen.

### Endringer utført
- [guide/installasjon.md](../../guide/installasjon.md) — Steg 7 lagt til i Nivå 1 med lenke til MCP-seksjonen

### Status
✅ Fullført



# KI-instruks 3
> Sjekk om det er andre deler av installasjonsinformasjon vi bør få med i trinnene.  Kanskje en kan angi til utvikleren hvor langt hen er i prosessen, så det er god kontroll med om hen er ferdig eller ikke?

## Problem: Manglende reiseoversikt og framdriftsindikatorer

Installasjonsveiledningen hadde ingen samlet oversikt over reisen, ingen sjekkpunkter og manglet Git i forutsetningene. Etterkontroll dekket ikke MCP-verifisering.

### Endringer utført
- [guide/installasjon.md](../../guide/installasjon.md) — Omstrukturert fra «Nivå 1/2/3» til «Fase 1–4» med:
  - Reiseoversikt med sjekkbokser øverst
  - Sjekkpunkter etter hver fase
  - Git lagt til i forutsetninger
  - MCP-verifisering i etterkontroll (Fase 2, punkt 7)
  - Tips om «guidet tur» som alternativ inngang
  - Steg-underoverskrifter i Fase 1

### Status
✅ Fullført



# KI-instruks 4
> Kanskje det burde være en mal, og så kan brukeren jobbe med den virkelige framdriften med en kopi av dokumentet hvor han eller du kunne krysse av fortløpende?
>
> Eller kanskje det er nok med en liten indikator i brukerens preferansefil?

Valgt løsning: framdriftssporing i pref-filen (minst vedlikehold, allerede leses av KI).

### Endringer utført
- [.github/copilot-kiitos-pref-mal.md](../../.github/copilot-kiitos-pref-mal.md) — Ny seksjon «Installasjonsframdrift» med fire sjekkbokser (Fase 1–4) som KI krysser av med dato
- [guide/installasjon.md](../../guide/installasjon.md) — Reiseoversikten forteller at framdriften spores i pref-filen. Hvert sjekkpunkt minner om å be KI krysse av.

### Status
✅ Fullført



# KI-instruks 5
> Journalfør med standardvalg.

Journalført i denne filen.

### Endringer utført
- Denne journalfilen opprettet

### Referanser
- `.vscode/mcp.json` i `kiitos.lag.kanalregistrene` — eksisterende MCP-konfigurasjon som ble brukt som referanse

### Status
✅ Fullført
