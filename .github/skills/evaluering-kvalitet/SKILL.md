---
name: evaluering-kvalitet
description: Utfører kvalitetssjekk av evaluering mot OECD DAC og Norad-standarder. Utløses ved "kvalitetssjekk evaluering" eller "sjekk evalueringskvalitet".
---

## Formål
Sikre at evalueringer møter internasjonale standarder og kiitos' kvalitetskrav.

## Når bruke
- Bruker skriver: "Kvalitetssjekk evalueringen", "Sjekk kvaliteten"
- Under evalueringsprosessen
- Før validering

## Arbeidsflyt
1. **Hent standarder**:
   - Les [styringsgrunnlag/kvalitetsstandard-evaluering.md](../../../styringsgrunnlag/kvalitetsstandard-evaluering.md)

2. **Sjekk kriterier**:
   - **Relevans**: Sjekk at evalueringsspørsmålene er relevante for formålet
   - **Nøyaktighet**: Sjekk at data og funn er korrekt dokumentert
   - **Pålitelighet**: Sjekk at metoden er egnet for spørsmålet
   - **Nyttighet**: Sjekk at resultater kan brukes til beslutninger

3. **Sjekk dokumentasjon**:
   - Alle funn er dokumentert
   - Kilder er referert
   - Begrensninger er angitt

4. **Generer rapport**:
   - Opprett `kvalitetsrapport.md` med:
     ```markdown
     ## Kvalitetsvurdering
     ### Relevans: [✅/⚠️/❌] - [begrunnelse]
     ### Nøyaktighet: [✅/⚠️/❌] - [begrunnelse]
     ### Pålitelighet: [✅/⚠️/❌] - [begrunnelse]
     ### Nyttighet: [✅/⚠️/❌] - [begrunnelse]
     ### Anbefalinger: [liste]
     ```

## Anti-rasjonalisering
- Ikke godkjenn evaluering med manglende dokumentasjon
- Ikke ignorere begrensninger i data
- Ikke overskride standarder

## Røde flagg
- Data mangler kilder
- Metode ikke beskrevet
- Funn ikke begrunnet

## Verifikasjon
- `kvalitetsrapport.md` eksisterer
- Alle 4 kriterier er vurdert
- Rapporten inneholder konkrete anbefalinger