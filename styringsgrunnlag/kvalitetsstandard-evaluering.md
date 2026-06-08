```markdown
# Kvalitetsstandard for evalueringer

Denne filen definerer de kanoniske kvalitetsstandardene for alle evalueringer i kiitos.fyr. Standarden er basert på OECD DAC-kriterier, Norad-retningslinjer og Bastøes fem forutsetninger.

## Hurtigoppslag

- **Formål**: Etablere bindende kvalitetskrav for evalueringer
- **Omfang**: Alle evalueringer i fyr-, laug- og prosjektlag
- **Eier**: Fyr-laget
- **Status**: Kanonisk
- **Overordnet rammeverk**: [evalueringsrammeverk.md](../guide/evalueringsrammeverk.md)

## Kvalitetskriterier

### 1. Relevans
Evalueringen må være relevant for beslutningstakere og interessenter.

| Krav | Beskrivelse | Verifikasjon |
|------|-------------|--------------|
| 1.1 | Evalueringsspørsmålene adresserer identifiserte informasjonsbehov | Sjekk mot evaluering-formaal.md |
| 1.2 | Evalueringen er tidfestet til beslutningsprosesser | Bekreft timing med prosjekteier |
| 1.3 | Interessenter er identifisert og involvert | Se interessentanalyse |
| 1.4 | Evalueringsomfanget er relevant for formålet | Kryssjekk formål vs. omfang |

**Minimumskrav**: Alle 4 underkriterier må oppfylles.

---

### 2. Nøyaktighet
Evalueringen må produsere korrekte, pålitelige og verifiserbare funn.

| Krav | Beskrivelse | Verifikasjon |
|------|-------------|--------------|
| 2.1 | Data er korrekt innsamlet | Sjekk datakilder og innsamlingsmetoder |
| 2.2 | Data er fullstendig | Ingen vesentlige hull i datasett |
| 2.3 | Analysen er korrekt utførte | Peer-review av analyse |
| 2.4 | Funn er basert på data | Alle funn sporbare til kilder |

**Minimumskrav**: Alle 4 underkriterier må oppfylles.

---
### 3. Pålitelighet
Evalueringsprosessen må være pålitelig og troverdig.

| Krav | Beskrivelse | Verifikasjon |
|------|-------------|--------------|
| 3.1 | Metoden er egnet for evalueringsspørsmålene | Metodevalidering |
| 3.2 | Metoden er korrekt implementert | Sjekk mot standarder |
| 3.3 | Evalueringsteamet har nødvendig kompetanse | Kompetansevurdering |
| 3.4 | Prosessen er uavhengig og nøytral | Interessentkonflikt-sjekk |

**Minimumskrav**: Alle 4 underkriterier må oppfylles.

---
### 4. Nyttighet
Evalueringen må produsere nyttige, praktiske resultater.

| Krav | Beskrivelse | Verifikasjon |
|------|-------------|--------------|
| 4.1 | Funn og anbefalinger er klare | Lesbarhetstest |
| 4.2 | Anbefalinger er praktisk gjennomførbare | Implementerbarhetsvurdering |
| 4.3 | Resultater kommuniseres til rett mottakere | Distribusjonsplan |
| 4.4 | Lærdommer dokumenteres og deles | Sjekk guide/lærdommer/ |

**Minimumskrav**: Alle 4 underkriterier må oppfylles.

---
### 5. Effektivitet
Evalueringen må være ressurseffektiv.

| Krav | Beskrivelse | Verifikasjon |
|------|-------------|--------------|
| 5.1 | Ressursbruk er proporsjonal med evalueringsomfang | Kost-nytte analyse |
| 5.2 | Tidsramme er realistisk | Prosjektplan vs. faktisk |
| 5.3 | Metodevalg er kostnadseffektiv | Alternativ analyse |
| 5.4 | Evalueringen unngår unødvendig duplikering | Sjekk mot eksisterende evalueringer |

**Minimumskrav**: 3 av 4 underkriterier må oppfylles.

---
### 6. Etikk
Evalueringen må gjennomføres på en etisk forsvarlig måte.

| Krav | Beskrivelse | Verifikasjon |
|------|-------------|--------------|
| 6.1 | Personvern overholdes | GDPR-sjekk |
| 6.2 | Informert samtykke innhentes | Samtykkedokumentasjon |
| 6.3 | Konfidensialitet ivaretas | Tilgangskontroll |
| 6.4 | Resultater presenteres ærlig | Ingen selektiv rapportering |

**Minimumskrav**: Alle 4 underkriterier må oppfylles.

## Kvalitetsnivåer

| Nivå | Beskrivelse | Krav |
|------|-------------|------|
| **Platin** | Evaluering av høyeste kvalitet, eksemplarisk | Alle kriterier fullt oppfylt |
| **Gull** | Evaluering av svært god kvalitet | Alle kriterier oppfylt, mindre avvik |
| **Sølv** | Evaluering av god kvalitet | Alle hovedkriterier oppfylt |
| **Bronse** | Evaluering oppfyller minimumskrav | Alle minimumskrav oppfylt |
| **Utilstrekkelig** | Evaluering oppfyller ikke minimumskrav | Et eller flere minimumskrav ikke oppfylt |

## Kvalitetssikringsprosess

### 1. Selvvalidering
- **Når**: Under evalueringsprosessen
- **Hvem**: Evalueringsleder
- **Hva**: Sjekk mot sjekkliste i [evaluerings-sjekkliste.md](../guide/evaluerings-sjekkliste.md)
- **Verktøy**: `/maskin evaluering-valider`

### 2. Peer-review
- **Når**: Før final rapport
- **Hvem**: Uavhengig evaluator
- **Hva**: Vurdering av alle kriterier
- **Dokumentasjon**: `peer-review-rapport.md`

### 3. Kvalitetssjekk
- **Når**: Før godkjenning
- **Hvem**: Kvalitetssikrer (kan være ekstern)
- **Hva**: Fullstendig sjekk mot standarder
- **Verktøy**: `/maskin evaluering-kvalitet`

### 4. Godkjenning
- **Når**: Før lukking
- **Hvem**: Prosjekteier
- **Hva**: Endelig godkjenning basert på alle sjekker
- **Dokumentasjon**: Godkjenningsattest

## Dokumentasjonskrav

Følgende dokumenter må eksistere for at evalueringen skal anses som kvalitetssikret:

| Dokument | Innhold | Plassering |
|----------|---------|------------|
| `evaluering-formaal.md` | Formål, bruk, spørsmål | `.kiitos/evaluering/[navn]/` |
| `evaluering-omfang.md` | Omfang, metode, oppfølging | `.kiitos/evaluering/[navn]/` |
| `kilder.md` | Alle datakilder | `.kiitos/evaluering/[navn]/data/` |
| `valideringsrapport.md` | Valideringsresultater | `.kiitos/evaluering/[navn]/` |
| `kvalitetsrapport.md` | Kvalitetsvurdering | `.kiitos/evaluering/[navn]/` |
| `peer-review-rapport.md` | Peer-review kommentarer | `.kiitos/evaluering/[navn]/` |
| `godkjenningsattest.md` | Godkjenningsdokument | `.kiitos/evaluering/[navn]/` |

## Avvikshåndtering

### Klassifisering av avvik

| Type | Beskrivelse | Håndtering |
|------|-------------|------------|
| **Kritisk** | Avvik som gjør evalueringen ugyldig | Stopp evaluering, rett umiddelbart |
| **Alvorlig** | Avvik som reduserer evalueringens kvalitet vesentlig | Rett før finalisering |
| **Moderat** | Avvik som påvirker kvaliteten, men ikke vesentlig | Rett ved neste mulighet |
| **Mindret** | Kosmetiske eller mindre avvik | Rett ved oppfølging |

### Avviksprosedyre
1. Identifiser avvik
2. Klassifiser avvik (kritisk/alvorlig/moderat/mindret)
3. Dokumenter avvik i `avvikslogg.md`
4. Utarbeid rettingsplan
5. Implementer rettinger
6. Verifiser rettinger

## Referanser til internasjonale standarder

### OECD DAC Kriterier
- Relevans
- Effektivitet
- Effekt
- Bærekraft
- Impact

### Norad Standarder
- Uavhengighet
- Nøytralitet
- Åpenhet
- Kvalitetssikring

### Bastøes Forutsetninger
1. Klargjøring av formål
2. Avklaring av omfang og metode
3. Systematiske prosesser
4. Kvalitetsstandard
5. Organisasjons- og læringskultur

## Integrasjon med kiitos

### Maskiner
- `/maskin evaluering-valider`: Validerer mot denne standarden
- `/maskin evaluering-kvalitet`: Utfører fullstendig kvalitetssjekk

### Filplassering
- Denne filen: `styringsgrunnlag/kvalitetsstandard-evaluering.md`
- Evalueringsspesifikke standarder: `.kiitos/evaluering/[navn]/standarder.md`

### Modulstyring
- Kvalitetsstandarden kan ikke deaktiveres
- Kvalitetssjekker er obligatoriske for alle evalueringer

## Vedlikehold

### Oppdateringsprosess
1. Forslag til endring sendes til fyr-laget
2. Endring vurderes mot OECD DAC og Norad standarder
3. Endring godkjennes av styringsgruppe
4. Oppdater alle referanser
5. Kommuniser endring til alle laug

### Versjonshistorikk

| Versjon | Dato | Endring | Godkjent av |
|---------|------|---------|-------------|
| 1.0 | 2026-06-08 | Initial versjon basert på Bastøe | Fyr-laget |
```