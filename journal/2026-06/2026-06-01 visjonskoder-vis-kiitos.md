# KI-instruks 1
> Jeg ser VIS-AH-XX er noen visjonskoder.  AH er fra det tidligere begrepet Arbeidshus, som vi nå har erstattet med fyr.  Samtidig bruker vi DV-KIITOS-XX som kode for designvalg i fyr.  Så kanskje bra å skifte fra VIS-AH-XX til VIS-KIITOS-XX ?  Hvis du er enig, gjør endringer, også hvor det henvises til de gamle kodene, grundig, så vi slipper å ha en konverteringstabell.  Journalfør og commit.

## Problem: Bytte visjonskoder fra VIS-AH til VIS-KIITOS
Visjonskodene i fyret brukte fortsatt det historiske `AH`-prefikset selv om begrepet arbeidshus er erstattet, og det skapte unødvendig oversettelse mot øvrige fyrkoder som `DV-KIITOS-*`.

### Endringer Utført
- Oppdaterte [../../styringsgrunnlag/visjoner.md](../../styringsgrunnlag/visjoner.md) slik at den kanoniske visjonsflaten nå bruker `VIS-KIITOS-01` til `VIS-KIITOS-05`, inkludert seksjonsoverskriften.
- Oppdaterte [../2026-05/2026-05-29 visjon-individuell-arbeidsmate-og-myndighet.md](../2026-05/2026-05-29%20visjon-individuell-arbeidsmate-og-myndighet.md) slik at historiske KI-svar peker til `VIS-KIITOS-04`.
- Synket siste gamle kodehenvisning i `kiitos.laug.kanalregistrene/journal/2026-05/2026-05-05 fasevis innforing av delt kiitos.md` til `VIS-KIITOS-03` og fjernet peker til den gamle, lokale arbeidshusfila.

### Status
✅ Fullført.

### Referanser
- [../../styringsgrunnlag/visjoner.md](../../styringsgrunnlag/visjoner.md)
- [../2026-05/2026-05-29 visjon-individuell-arbeidsmate-og-myndighet.md](../2026-05/2026-05-29%20visjon-individuell-arbeidsmate-og-myndighet.md)

### Notater
Validerte med målrettet søk etter nummererte `VIS-AH-[0-9]{2}`-koder i `kiitos.fyr` og `kiitos.laug.kanalregistrene`; ingen treff gjenstår. `git diff --check` kjørte uten funn i begge repoer.