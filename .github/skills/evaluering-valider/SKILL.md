---
name: evaluering-valider
description: Validerer at evaluering følger Bastøes fem forutsetninger og kvalitetsstandard. Utløses ved "valider evaluering" eller før lukking.
---

## Formål
Sikre at evalueringer oppfyller minimumskravene fra [guide/evalueringsrammeverk.md](../../../guide/evalueringsrammeverk.md).

## Når bruke
- Bruker skriver: "Valider evalueringen", "Sjekk om evalueringen er fullstendig"
- Før `/maskin evaluering-lukk` kjøres

## Arbeidsflyt
1. **Sjekk Forutsetning 1 (Formål)**:
   - Kontroller at `evaluering-formaal.md` eksisterer
   - Verifiser at formål er tydelig definert (type, bruk, spørsmål)

2. **Sjekk Forutsetning 2 (Omfang/Metode)**:
   - Kontroller at `evaluering-omfang.md` eksisterer
   - Verifiser at omfang, metode og oppfølging er beskrevet

3. **Sjekk Forutsetning 3 (Systematisk prosess)**:
   - Kontroller at arbeidsflyten følger [guide/evalueringsflyt.md](../../../guide/evalueringsflyt.md)
   - Verifiser at alle steg er dokumentert i journal

4. **Sjekk Forutsetning 4 (Kvalitet)**:
   - Kontroller at kvalitetssjekken `/maskin evaluering-kvalitet` er kjørt
   - Verifiser at resultater er dokumentert

5. **Rapport**:
   - Opprett `valideringsrapport.md` med:
     ```markdown
     ## Valideringsstatus: [Godkjent/Avvist]
     ### Forutsetning 1: [✅/❌] - [kommentar]
     ### Forutsetning 2: [✅/❌] - [kommentar]
     ### Forutsetning 3: [✅/❌] - [kommentar]
     ### Forutsetning 4: [✅/❌] - [kommentar]
     ### Forutsetning 5: [✅/❌] - [kommentar]
     ```

## Anti-rasjonalisering
- Ikke godkjenn evaluering med manglende formål
- Ikke hopp over forutsetninger selv om de ser "åpenbare" ut
- Ikke endre evalueringsinnhold - kun valider

## Røde flagg
- `evaluering-formaal.md` mangler
- Kvalitetssjekk ikke kjørt
- Journal mangler dokumentasjon av prosessen

## Verifikasjon
- `valideringsrapport.md` eksisterer
- Alle 5 forutsetninger har status
- Rapporten er lagret i `.kiitos/evaluering/[navn]/`