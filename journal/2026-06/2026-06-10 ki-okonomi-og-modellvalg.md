# KI-instruks 1
> Neida, du kan gjerne gjøre det økonomisk.
>
> Du kan forresten legge til en instruks i kiitos.fyr om å være økonomisk i bruken av KI, og notere at fra 1. juni 2026 kom kraftigere modeller (GPT5.5) som gjorde det langt  (2x-3x) dyrere å jobbe enn før.  Også Opus (3x før Juni) var tilgjengelig fram til juni.  Ved å ha modellvalg på auto så gis 10% i tillegg til at den rimelige 5.3-codex ofte velges.  Innimellom, gjerne på slutten av måneden, så kan en velge de største modellene og gjøre jobber som å rydde opp i kode på tvers og annet som krever mye inn-/utdata for KI.  En slags månedsoppvask kunne blitt en slags rutine, muligens.

## Problem: Økonomisk bruk av KI og modellvalg i kiitos.fyr

Brukeren ba om en delbar instruks i `kiitos.fyr` om økonomisk bruk av KI, med kort historisk kostkontekst rundt modellskiftet fra 1. juni 2026 og forslag om å samle tyngre oppryddingsjobber i en periodisk månedsoppvask.

### Endringer utført

- Oppdaterte [velkommen.md](../../velkommen.md) med en kort kjerneinstruks om å bruke minste nødvendige instruksflate og rimeligste modell som løser saken.
- Oppdaterte [guide/effektiv-samhandling-med-ki.md](../../guide/effektiv-samhandling-med-ki.md) med et eget avsnitt om økonomisk modellvalg, kostnivå for GPT5.5 og Opus, `auto`-valg og idéen om månedlig oppvask.

### Validering

- VS Code-diagnostikk ble kjørt for de berørte Markdown-filene uten funn.

### Status

Fullført.



# KI-instruks 2
> Jeg korrigerte fra auto 10% mer kost til auto 10% kostnadsrabatt.
>
> Journalfør, commit og avslutt denne samtalen.

## Problem: Korrigere kosttekst og avslutte saken ryddig

Brukeren opplyste at `auto` skal beskrives som 10 % kostnadsrabatt, ikke 10 % merkost, og ba om journalføring, commit og avslutning av samtalen.

### Endringer utført

- Beholdt brukerens korrigering i [guide/effektiv-samhandling-med-ki.md](../../guide/effektiv-samhandling-med-ki.md), der `auto` nå beskrives som 10 % tilleggsrabatt.
- Opprettet denne journalfila i `kiitos.fyr/journal/2026-06/` for å dokumentere hele saken samlet.

### Status

Fullført. Endringene er journalført og klare for commit i `kiitos.fyr`.