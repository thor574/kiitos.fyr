---
name: evaluering-start
description: Starter en ny evaluering med Bastøes rammeverk. Utløses når bruker ber om å starte evaluering av prosjekt, prosess eller resultat.
---

## Formål
Automatisere oppstart av evalueringer i tråd med evalueringsrammeverket definert i [guide/evalueringsrammeverk.md](../../../guide/evalueringsrammeverk.md).

## Når bruke
- Bruker skriver: "Start evaluering av [X]", "Evaluer [Y]", "Gjennomfør evaluering"
- Ny evalueringssak opprettes

## Arbeidsflyt
1. **Avklar formål**:
   - Spør: "Hva er formålet med denne evalueringen? (beslutningsstøtte/læring/ansvarliggjøring)"
   - Lag `evaluering-formaal.md` med svar

2. **Avklar omfang**:
   - Spør: "Hva skal evalueres? (prosjekt/prosess/resultat)"
   - Spør: "Hvilke spørsmål skal besvares?"
   - Lag `evaluering-omfang.md` med svar

3. **Opprett struktur**:
   - Opprett `.kiitos/evaluering/[navn]/` med:
     - `plan.md` (tom mal)
     - `data/` (for innsamlet materiale)
     - `resultater/` (for funn)

4. **Start journal**:
   - Opprett `journal/evalueringer/[navn]-start.md` med:
     ```markdown
     # Evaluering: [navn]
     ## Status: Oppstartet
     ## Formål: [fra bruker]
     ## Omfang: [fra bruker]
     ```

5. **Gi veiledning**:
   - Vis: "Evalueringen er startet. Bruk `/maskin evaluering-valider` for validering underveis."

## Anti-rasjonalisering
- Ikke hopp over formålsavklaring selv om bruker synes det er åpenbart
- Ikke antag omfang - be om spesifikk avgrensning
- Ikke opprett filer utenfor `.kiitos/evaluering/`

## Røde flagg
- Bruker nekter å definere formål
- Omfang er for bredt ("evaluer alt")
- Evaluering allerede pågår for samme tema

## Verifikasjon
- `evaluering-formaal.md` eksisterer og har innhold
- `evaluering-omfang.md` eksisterer og har innhold
- `.kiitos/evaluering/[navn]/` struktur er opprettet
- Journalfil er opprettet i riktig plassering