---
name: evaluering-lukk
description: Lukker evaluering, arkiverer resultater og oppretter handlingsplan. Utløses ved "lukk evaluering", "fullfør evaluering".
---

## Formål
Avslutte evalueringsprosessen på en strukturert måte og sikre oppfølging.

## Når bruke
- Bruker skriver: "Lukk evalueringen", "Fullfør evaluering [navn]"
- Alle evalueringsaktiviteter er fullført

## Arbeidsflyt
1. **Kjøre validering**:
   - Kjør `/maskin evaluering-valider`
   - Hvis ikke godkjent: avbryt og be om rettinger

2. **Kjøre kvalitetssjekk**:
   - Kjør `/maskin evaluering-kvalitet`
   - Lagre rapport

3. **Oppsummer resultater**:
   - Opprett `evaluering-oppsummering.md` med:
     ```markdown
     # Evalueringsoppsummering: [navn]
     ## Formål: [fra evaluering-formaal.md]
     ## Hovedfunn: [bullet points]
     ## Anbefalinger: [nummerert liste]
     ```

4. **Opprett handlingsplan**:
   - Opprett `handlingsplan.md` med:
     ```markdown
     # Handlingsplan
     ## Anbefaling [1]
     - **Ansvarlig**: [navn]
     - **Frist**: [dato]
     - **Status**: [Åpen]
     ```

5. **Del lærdommer**:
   - Kopier relevante funn til `guide/lærdommer/evaluering-[navn].md`
   - Opprett lenke i `guide/lærdommer/README.md`

6. **Arkiver**:
   - Flytt `.kiitos/evaluering/[navn]/` til `journal/evalueringer/[navn]-arkiv/`
   - Oppdater journal med avslutningsdato

7. **Opprett oppgaver**:
   - For hver anbefaling: opprett oppgave i `oppgaver/` med referanse

## Anti-rasjonalisering
- Ikke lukk evaluering uten validering
- Ikke lukk evaluering uten handlingsplan
- Ikke slett evalueringsfiler - arkiver

## Røde flagg
- Validering ikke godkjent
- Handlingsplan mangler ansvarlige
- Lærdommer inneholder sensitive data

## Verifikasjon
- `evaluering-oppsummering.md` eksisterer
- `handlingsplan.md` eksisterer
- Filer er flyttet til arkiv
- Oppgaver er opprettet