---
name: oppia
description: "Brukes når en kollega skal lære kiitos stegvis: finn tilgjengelige moduler dynamisk i arbeidsrommet, la brukeren velge hva som skal læres først, bygg læringsplan fra aktuelle filer og referansekoder, og følg progresjon fram til bestått. Støtter også vurderingsmodus for erfarne utviklere som vil vurdere og gi tilbakemelding på delt instrukssett."
---

# Lær kiitos stegvis

Denne maskinen er en **aktiveringswrapper**.

Når bruker skriver `/maskin oppia`, bruk denne rekkefølgen:

1. Les [kjerne.md](kjerne.md) for den delte arbeidsflyten, batchlogikken og progresjonsreglene.
2. Bruk deretter de lokale reglene under for `kanalregistrene`.

## Lokale modulregler i kanalregistrene

- Ta med ett prosjekt per workspace-prosjekt som faktisk har lokal `prosjektinstruks.md` i `.kiitos/` eller `kr-felles/.kiitos/`.
- Bruk prosjektets arbeidsromsnavn som modulnavn, som `k2loginapi`, `k2webapi`, `k1`, `k2`, `npi` eller `kdb`.
- Ikke presenter moduler som ikke er tilgjengelige akkurat nå.

## Lokale fullføringsregler i kanalregistrene

- Når status blir `bestått` eller `gjennomgått`, registrer en kort fullføringspost i `guide/kompetanse.md` med kortnavn, antall moduler, antall læringspunkter og modus.
- Hold detaljert løypestatus ute av `guide/ansvar.md` og andre delte statusfiler.

## Lokale referanser i kanalregistrene

- `velkommen.md`
- `guide/kiitos.md`
- `guide/kompetanse.md`
- `styringsgrunnlag/designvalg.md`
- `k2/kr-felles/.kiitos/prosjektinstruks.md` eller `PROSJEKT/.kiitos/prosjektinstruks.md`
- `.github/skills/list/SKILL.md`