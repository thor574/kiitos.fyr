---
name: motsigelsesfinner
description: "Brukes månedlig for å avdekke motstridende posisjoner i styringsgrunnlag, visjoner og designvalg — og tvinge frem avklaring."
---

# Motsigelsesfinner — månedlig koherenssjekk

## Formål

Avdekke steder der beslutninger, visjoner eller designvalg i kiitos-flaten motsier hverandre, slik at inkonsistens kan ryddes opp før den vokser.

Maskinen produserer:

1. En liste over 3–5 reelle motsigelser funnet i styringsgrunnlag og praksis.
2. For hver motsigelse: direkte sitater fra begge sider og en forklaring av spenningen.
3. Avklaringsspørsmål og forslag til oppløsning.

## Når bruke

Bruk når du:

- har jobbet en stund og mistenker at styringsgrunnlaget har vokst seg inkonsistent
- vil gjøre månedlig vedlikehold av beslutningsgrunnlaget
- skal ta en viktig ny beslutning og vil sikre at den ikke kolliderer med eksisterende posisjoner

## Arbeidsflyt

### Steg 1: Les styringsgrunnlag

1. Les alle filer i `styringsgrunnlag/` i fyr og aktiv laug.
2. Inkluder `begrepsmatrise.md`, `designvalg.md`, `visjoner.md` og eventuelle andre styrende filer.

### Steg 2: Les nylig praksis

1. Les journalinnlegg fra de siste 30 dagene (alle nivåer).
2. Les aktive oppgaver.
3. Trekk ut faktiske beslutninger og posisjoner tatt i praksis.

### Steg 3: Identifiser motsigelser

Søk etter tre typer motsigelser:

1. **Beslutning mot beslutning** — to styrende dokumenter sier ulike ting om samme tema.
2. **Visjon mot praksis** — styringsgrunnlaget sier X, men nylig journal viser at Y gjøres i praksis.
3. **Begrepskonflikt** — samme begrep brukes med ulikt innhold på ulike steder.

### Steg 4: Presenter funn

For hver motsigelse, vis:

- **Posisjon A** — direkte sitat med filreferanse og linjenummer
- **Posisjon B** — direkte sitat med filreferanse og linjenummer
- **Spenning** — hva konflikten betyr i praksis
- **Type** — beslutning/beslutning, visjon/praksis, eller begrepskonflikt

### Steg 5: Be om avklaring

For hver motsigelse, spør brukeren:

- Behold A (oppdater B)
- Behold B (oppdater A)
- Bevisst dobbeltposisjon (dokumenter hvorfor begge gjelder)

### Steg 6: Utfør godkjente endringer

Oppdater styringsgrunnlaget der brukeren har avklart. Bevar original journaltekst uendret.

## Kvalitetskrav

- Siter alltid faktisk tekst, aldri parafraser.
- Skille mellom reelle motsigelser og bevisste avveininger (der begge sider er tilsiktet).
- Maks 3–5 funn per kjøring — fokus på de viktigste.
- Ikke endre journalinnhold (append-only).
- Følg kiitos' plasseringsregler ved endring av styringsgrunnlag.
