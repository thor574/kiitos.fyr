# Offentlig journal og personvern

## Formål

Sikre at `kiitos.fyr` kan dokumentere beslutninger og læring offentlig uten å publisere rå samtaler eller privat kontekst.

## Beslutninger

- Journalføring klassifiseres etter både lag og synlighet.
- Offentlig journal bruker sanitert saksformat; ordrett dialog hører bare hjemme i godkjent privat flate.
- Offentlig publisering krever kontroll av diff, hemmeligheter, personopplysninger og tilgangsdetaljer.
- Personvern- og sikkerhetsrettelser er et uttrykkelig unntak fra append-only-prinsippet.

## Endringer

- Den kanoniske journalguiden er skrevet om med tre synlighetsnivåer og publiseringskontroll.
- Oppstarts- og plasseringsreglene peker nå til den sikre journalmodellen.
- Testoppgaven for instruksjonsholdbarhet skiller mellom sanitert rapport og privat testdialog.
- Det er opprettet en offentlighetskontroll for dagens repo og historikk.

## Verifikasjon

- Arbeidstreet og Git-historikken er søkt etter vanlige hemmelighetsmønstre og personopplysninger.
- Offentlige repoidentifikatorer er skilt fra private innloggings- og tilgangsdata.
- Tidligere saniteringspraksis i journalen er bekreftet som et egnet presedens.

## Kilder

- [Journal-system](../../guide/journal-system.md)
- [Plassering](../../guide/plassering.md)
- [Offentlighetskontroll](../../analyse/2026-09-01%20offentlighetskontroll.md)
