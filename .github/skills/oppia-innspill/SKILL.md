---
name: oppia-innspill
description: "Brukes når en kollega vil samle åpne oppia-anmerkninger fra en laug- eller prosjektløype til et datostemplet, pedagogisk og konstruktivt innspill til gruppen."
---

# Lag oppia-innspill

Denne maskinen er en **aktiveringswrapper**.

Når bruker skriver `/maskin oppia-innspill`, bruk denne rekkefølgen:

1. Finn riktig lokal oppia-plan i den sentrale `kompetanse.min/`-mappen. Standard er `kompetanse.min/kiitos-oppia-lokalt.md`, men bruk en mer spesifikk lokal planfil hvis brukeren faktisk har valgt eller opprettet en egen fil for et modulsett. Hvis det er uklart hvilken plan brukeren mener, spør kort før du leser fila. Hvis ingen relevant fil finnes ennå, spør kort om brukeren vil starte med `/maskin oppia` først.
2. Finn åpne anmerkninger under `## Anmerkninger`. Bruk bare anmerkninger som faktisk er skrevet av brukeren eller eksplisitt godkjent av brukeren.
3. Gruppér anmerkningene i tre typer når det passer: `uenig`, `justeringsforslag` og `nytt ønskekrav`.
4. Still bare korte avklaringsspørsmål hvis en anmerkning er for vag til å kunne gjengis redelig for andre.
5. Lag et kort gruppenotat som:
   - forklarer hva brukeren allerede opplever som godt eller nyttig
   - beskriver hva brukeren ønsker å justere, kutte eller legge til
   - gjør begrunnelsene lette å forstå for andre kolleger
   - er pedagogisk, saklig og motiverende, ikke spiss eller polemisk
6. Lagre notatet i `## Oppia-innspill` med dato, kort tittel og tekst. Behold tidligere innspill som historikk i samme seksjon.
7. Behold rå anmerkninger uendret med mindre brukeren ber om å rydde eller lukke dem.
8. Hvis brukeren vil, lag også en kortere variant som passer for leder, møteagenda eller PR-kommentar.

Anbefalt format i den lokale fila:

```markdown
## Oppia-innspill

- Dato: YYYY-MM-DD
  Tittel: Forslag etter oppia-gjennomgang
  Tekst: |
    Her skriver maskinen et kort, pedagogisk innspill til gruppen basert på åpne anmerkninger.
```

Maskinen skal som hovedregel:

- bygge på brukerens egne anmerkninger, ikke dikte nye uenigheter
- holde seg til én valgt oppia-fil om gangen og ikke blande anmerkninger fra flere prosjekter uten at brukeren ber om det
- gjøre teksten lettere å lese uten å vanne ut substansen
- tydelig skille mellom det brukeren vil beholde, det brukeren vil justere og det brukeren vil legge til
- kunne brukes både underveis i løypa og etter fullført oppia