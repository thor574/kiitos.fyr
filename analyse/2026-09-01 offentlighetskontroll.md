# Offentlighetskontroll av kiitos.fyr

**Dato:** 2026-09-01
**Omfang:** Arbeidstreet på `main` og en heuristisk kontroll av Git-historikken.

## Resultat

Det ble ikke funnet e-postadresser, private nøkler eller mønstre som tilsvarer vanlige API-nøkler, GitHub-tokens, AWS-nøkler, bearer-tokens eller passordtilordninger.

Kontrollen fant én vesentlig regelkonflikt: de kanoniske instruksene krevde automatisk og ordrett lagring av alle brukerinstrukser, mens `kiitos.fyr` er offentlig. Dette kunne føre til at privat samtalekontekst ble publisert selv om innholdet ikke hørte hjemme i fyret.

Det finnes også offentlige konto- og repoidentifikatorer i historikken. De beskriver et allerede offentlig GitHub-repo og dets offentlige eier, ikke innloggingsdata eller private tilgangsrettigheter. De vurderes derfor som lav risiko og er beholdt.

## Tiltak

- Offentlig journal er definert som sanitert og destillert saksjournal.
- Ordrett dialog er avgrenset til godkjent privat flate.
- Konto-, tilgangs- og autentiseringsdetaljer er eksplisitt utelukket fra offentlig journal.
- En obligatorisk kontroll av diff, hemmeligheter, personopplysninger og delbarhet er lagt inn før offentlig commit.
- Testoppgaven for instruksjonsholdbarhet krever nå saniterte offentlige rapporter i stedet for rå chatutskrifter.

## Historikk

Eldre commits vil fortsatt inneholde tidligere regeltekst og historiske arbeidsromsnavn. Kontrollen fant ingen hemmelighet som begrunner omskriving av offentlig Git-historikk. Historieomskriving ville dessuten være et destruktivt inngrep og er ikke utført.

## Begrensning

Kontrollen er heuristisk. Den kombinerer søk etter kjente hemmelighetsmønstre med manuell vurdering av treff, men kan ikke matematisk bevise at ingen sensitiv opplysning finnes. Nye endringer skal derfor gjennom samme publiseringskontroll før de legges ut.
