# Evalueringsrammeverk

Denne guiden definerer evalueringsprinsippene for kiitos.fyr, basert på Per Øyvind Bastøes fem forutsetninger for gode evalueringer. Guiden eier rammeverket for hvordan evalueringer skal struktureres, gjennomføres og følges opp i kiitos-prosjekter.

## Hurtigoppslag

- **Formål**: Sikre at alle evalueringer i kiitos.fyr er systematiske, nyttige og i tråd med internasjonale standarder
- **Omfang**: Alle evalueringsaktiviteter i fyr-, laug- og prosjektlag
- **Eier**: Denne guiden eies av fyr-laget og kan utvides lokalt i laug og prosjekter
- **Kanoniske referanser**: [preferanser.md](preferanser.md), [instruksintegritet.md](instruksintegritet.md), [designvalg.md](designvalg.md)

## Bastøes fem forutsetninger

Følgende fem forutsetninger må innfris for at evalueringer i kiitos skal være gode og nyttige:

### 1. Klargjøring av formål

Hver evaluering må ha tydelig definert:
- **Hva evalueringen er**: Type evaluering (prosess, resultat, effekt, etc.)
- **Hva evalueringen skal brukes til**: Beslutningsstøtte, læringsformål, ansvarliggjøring
- **Hvilke spørsmål evalueringen skal besvare**: Konkrete evalueringsspørsmål

**Implementering i kiitos**:
- Opprett `evaluering-formaal.md` i prosjektets `.kiitos/`-mappe
- Bruk malen fra [maler/evaluering-formaal-mal.md](../../maler/felles/evaluering-formaal-mal.md)
- Formålet må godkjennes av prosjekteier før evaluering starter

### 2. Avklaring av omfang og metode

For hver evaluering må følgende avklares:
- **Hva som skal evalueres**: Omfang, grenser, inklusjoner/eksklusjoner
- **Hvordan det skal evalueres**: Metode (kvantitativ, kvalitativ, blandet)
- **Hvordan resultater skal brukes og følges opp**: Handlingsplan og oppfølgingsprosess

**Implementering i kiitos**:
- Dokumenter i `evaluering-omfang.md`
- Bruk sjekkliste fra [guide/evaluerings-sjekkliste.md](evaluerings-sjekkliste.md)
- Metodevalg må begrunnes og godkjennes

### 3. Systematiske prosesser

Evalueringsprosessene må være:
- **Systematiske**: Følge en fastsatt rekkefølge
- **I tråd med anerkjente kriterier**: OECD DAC, Norad-standarder, Bastøes prinsipper
- **Gjentakbare**: Samme prosess skal gi samme resultat under like forutsetninger

**Implementering i kiitos**:
- Følg arbeidsflyten definert i [guide/evalueringsflyt.md](evalueringsflyt.md)
- Bruk standardene fra [styringsgrunnlag/evalueringsstandarder.md](../../styringsgrunnlag/evalueringsstandarder.md)
- Alle evalueringer skal loggføres i `journal/evalueringer/`

### 4. Kvalitetsstandard

Det må etableres en kvalitetsstandard for evalueringsarbeidet som inkluderer:
- **Kvalitetskriterier**: Relevans, nøyaktighet, pålitelighet, nyttighet
- **Kvalitetssikring**: Peer-review, validering, dokumentasjon
- **Kvalitetsmåling**: Indikatorer for evalueringskvalitet

**Implementering i kiitos**:
- Kvalitetsstandarden er definert i [styringsgrunnlag/kvalitetsstandard-evaluering.md](../../styringsgrunnlag/kvalitetsstandard-evaluering.md)
- Bruk kvalitetssjekken `/maskin evaluering-kvalitet`
- Alle evalueringer skal ha en kvalitetsvurdering

### 5. Organisasjons- og læringskultur

Kiitos må fremme en kultur som:
- **Stimulerer til åpenhet**: Om hva som fungerer og hva som ikke fungerer
- **Fremmer læring**: Fra evalueringer og erfaringer
- **Oppmuntrer til forbedring**: Kontinuerlig forbedring av prosesser og praksis

**Implementering i kiitos**:
- Del evalueringsresultater i `guide/lærdommer/`
- Bruk læringsmodulen: [guide/læringskultur.md](læringskultur.md)
- Opprett `lærdommer/` i prosjektets `.kiitos/`-mappe

## Arbeidsflyt for evalueringer

### 1. Initiell fase
- Definer formål (se Forutsetning 1)
- Avklar omfang og metode (se Forutsetning 2)
- Opprett evalueringsplan i `.kiitos/evaluering/plan.md`

### 2. Gjennomføringsfase
- Følg systematisk prosess (se Forutsetning 3)
- Dokumenter alle steg i `journal/evalueringer/`
- Sikre kvalitet (se Forutsetning 4)

### 3. Oppfølgingsfase
- Analyser resultater
- Utarbeid handlingsplan
- Del lærdommer (se Forutsetning 5)
- Lukk evalueringssaken

## Klassifisering av evalueringer

Klassifiser evalueringer etter:

- **Type**: Prosessevaluering, resultatevaluering, effektevaluering, lærdomsevaluering
- **Omfang**: Mikro (enkel aktivitet), Mesonivå (prosjekt), Makro (program/portfølje)
- **Frekvens**: Engangs, periodisk, kontinuerlig
- **Initiativ**: Internt initiert, eksternt pålagt

## Kvalitetssikring

Alle evalueringer må gjennomgå:

1. **Selvvalidering**: Evalueringsleder sjekker mot sjekkliste
2. **Peer-review**: Uavhengig person vurderer evalueringen
3. **Godkjenning**: Prosjekteier godkjenner evaluering og handlingsplan
4. **Oppfølging**: Verifiser at handlingsplanen implementeres

Bruk `/maskin evaluering-valider` for automatisk validering.

## Integrasjon med kiitos-modellen

### Lagstruktur
- **Fyr**: Universelle evalueringsprinsipper og standarder
- **Laug**: Laugspesifikke evalueringspraksiser
- **Ruff**: Personlige evalueringspreferanser
- **Prosjekt**: Prosjektspesifikke evalueringer

### Filplassering
- Universelle regler: `guide/evalueringsrammeverk.md` (denne filen)
- Laugspesifikke regler: `guide/evaluering-laug.md`
- Prosjektspesifikke evalueringer: `.kiitos/evaluering/`
- Journaler: `journal/evalueringer/`

### Modulstyring
- Evalueringsmodulen kan styres med verdiene `på`, `ved behov` eller `av` i pref-filen
- Standard er `ved behov`
- Aktiver med `på` for prosjekter med hyppige evalueringer

## Typiske avvik og løsninger

| Avvik | Løsning |
|-------|---------|
| Uklart evalueringsformål | Gå tilbake til Forutsetning 1, avklar formål |
| Mangler systematisk prosess | Bruk malen i [maler/evalueringsflyt-mal.md](../../maler/felles/evalueringsflyt-mal.md) |
| Evaluering ikke fulgt opp | Opprett handlingsplan og spor i `oppgaver/` |
| Kvalitetsstandard ikke oppfylt | Gjennomfør kvalitetssjekk med `/maskin evaluering-kvalitet` |
| Lærdommer ikke delt | Legg til i `guide/lærdommer/` eller prosjektets `.kiitos/lærdommer/` |

## Maskiner

- `/maskin evaluering-start`: Starter en ny evaluering med riktig mal
- `/maskin evaluering-valider`: Validerer evaluering mot kvalitetsstandard
- `/maskin evaluering-kvalitet`: Utfører kvalitetssjekk
- `/maskin evaluering-lukk`: Lukker evaluering og arkiverer resultater

## Kanoniske referanser

- [preferanser.md](preferanser.md)
- [instruksintegritet.md](instruksintegritet.md)
- [designvalg.md](designvalg.md)
- [velkommen.md](velkommen.md)
- [journal-system.md](journal-system.md)
- [styringsgrunnlag/evalueringsstandarder.md](../../styringsgrunnlag/evalueringsstandarder.md)
- [maler/evaluering-formaal-mal.md](../../maler/felles/evaluering-formaal-mal.md)
- [maler/evalueringsflyt-mal.md](../../maler/felles/evalueringsflyt-mal.md)
