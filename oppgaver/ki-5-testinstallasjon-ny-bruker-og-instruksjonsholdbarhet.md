# KI-5: Test ny-bruker installasjon og instruksjonsholdbarhet

**Status:** Parkert  
**Opprettet:** 2026-07-04  
**Eier:** thor574  
**Prioritet:** Høy — kritisk for kiitos-pålitelighet

## Bakgrunn

Systemissue observert i praksis: Når en KI-bruker gir en velspesifisert oppgave i samtalen, hopper KI over kiitos-instruksjoner og andre oppstartsmateriale som skulle leses eller gjøres tilgjengelig. Dette fører til:

- ❌ Viktige beslutninger og oppstartsutfall blir ikke dokumentert
- ❌ Nødvendig instruksjonskontekst holder ikke gjennom lengre samtaler
- ❌ Usikkerhet om hva som er lest/fulgt vs. hoppet over

**Ønsket oppførsel:**
- ✅ Instruksjoner skal kunne velges å leses eller hoppes over (valgfritt)
- ✅ Bruker skal vite eksakt hvilke instruksjoner som ble lest
- ✅ Viktige oppstartsvalg og resultater skal journalføres på riktig synlighetsnivå
- ✅ Instruksjoner skal ikke bli skjult av godt spesifiserte oppgaver

## Oppgaven

### Fase 1 — Analyse av startinstruks

1. **Gjennomgå oppstartsinstruksjonene i installasjon.md**
   - Les og dokumenter nøyaktig hvilke instruksjoner som gis til ny bruker
   - Identifiser hvor instruksjonene "kaster over" til velkommen.md
   - Evaluer om instruksjonene tydelig sier "velg selv om du vil lese disse eller ikke"

2. **Kartlegg instruksjonshierarkiet**
   - Hvordan starter en ny bruker? (Først `.github/copilot-instructions.md`? Manuell liming av oppstartsinstruks?)
   - Hvilke portaler peker til velkommen.md? (AGENTS.md, copilot-instructions.md, README.md?)
   - Hvordan er instruksjonskjeden: fyr → laug → ruff → prosjekt?

3. **Identifiser instruksjonsprioritering**
   - Når en bruker både leser instruksjoner OG oppgir en velspesifisert oppgave, hva vinner?
   - Gjør instruksjonene det klart at de skal leses _hver_ samtale, eller bare første?

### Fase 2 — Test ny-bruker installasjon fra scratch

Opprett et testscenario der en helt ny bruker (eller simulator for ny bruker):

1. **Steg 1: Uten instruksjoner**
   - Gi bare: `Jeg er ny bruker i et kiitos-arbeidsrom. Hva skal jeg gjøre først?`
   - Observer: Leser KI velkommen.md? Detekterer den lauget? Tilbyr de korrekt start?

2. **Steg 2: Med eksplisitt oppstartsinstruks**
   - Gi instruksen fra `installasjon.md` ordrett (fra "Oppstartsinstruks for ny bruker")
   - Observer: Følges instruksjonene? Eller hoppes de over?

3. **Steg 3: Med velspesifisert oppgave + instruksjoner**
   - Gi instruksjonene, deretter: `...og du skal hjelpe meg å sette opp `kiitos.ruff.testbruker` med alle filene på plass`
   - Observer: Hoppes instruksjonene over til fordel for oppgaven?
   - **Dette er kjernepoenget**: Skal instruksjoner kunne «overstyres» av godt spesifisert oppgave?

### Fase 3 — Test instruksjonslording across samtaler

1. **Samme samtale, nye meldinger**
   - Start en KI-samtale med instruksjonene
   - Etter at KI har lest og rapportert: be KI gjøre oppgave X
   - Be deretter KI gjøre oppgave Y
   - Observer: Blir instruksjonene gjentatt hver gang? Eller bare første gang?

2. **Ny samtale**
   - Åpne ny KI-samtale i samme arbeidsrom
   - Be KI gjøre en oppgave direkte (uten å gjenta instruksjonene)
   - Observer: Leser KI instruksjonene på nytt? Eller antar den at de ble lest sist?

### Fase 4 — Vurdering av instruksjonspresentasjon

1. **Er valgfriheten eksplisitt?**
   - Skal bruker kunne skrive `skip instruksjoner` eller lignende?
   - Eller skal KI aktivt tilby: "Ønsker du å gå gjennom instruksjonene? (ja/nei)"?

2. **Hva er riktig instruksjonshieraki ved konflikt?**
   - Hvis bruker gir både instruksjoner OG oppgave: instruksjoner først, eller oppgave første?
   - Burde oppgavespesifisering pausere instruksjonene, eller tvinge dem gjennom først?

3. **Journalføring og personvern**
   - Blir utfallet dokumentert uten at samtalen kopieres automatisk?
   - Er offentlig rapport sanitert, og ligger eventuell ordrett testdialog bare i en godkjent privat flate?

## Akseptkriterie

Oppgaven er løst når:

- [ ] Instruksjonshierarkiet er kartlagt og dokumentert i styringsgrunnlag
- [ ] Ny-bruker testene fra Fase 2 er gjennomkjørt og rapportert
- [ ] Instruksjonslording på tvers av samtaler er verifisert å fungere korrekt
- [ ] Valgfrihet for å lese/hoppe over instruksjoner er eksplisitt og testbar
- [ ] Eventuell manglende instruksjonsholdbarhet er dokumentert som issue og prioritert for fix
- [ ] Testresultatet er journalført uten å publisere rå chatutskrifter eller private tilgangsdetaljer

## Mulige årsaker til instruksjonshoppløp

(For analyse i Fase 1)

1. **Instruksjonene er for lange eller ambisiøse** — bruker hoppes over dem hvis oppgaven er velspesifisert
2. **Portalen peker ikke klart nok til velkendte.md** — KI aktiverer instruksjonene aldri fordi de ikke er tydelig oppstartspunktet
3. **Konteksten er ikke gjort varig på riktig nivå** — KI mangler et kort, sanitert spor av beslutninger og testresultater
4. **Konflikt mellom instruksjonsmodus og oppgavemodus** — KI velger oppgave over instruksjon når begge gis
5. **Instruksjonene sier ikke eksplisitt: "Les dette hver samtale"** — KI antar at første lesning er nok

## Neste steg

Når denne oppgaven fullføres, bør det følge en design/implementering som:
- Gjør instruksjonvalgfriheten eksplisitt i cada ny samtale
- Sikrer at viktige oppstartsvalg og testresultater journalføres med riktig synlighet
- Setter klare prioriteringsregler hvis instruksjon + oppgave gis samtidig
- Vurderer om instruksjonene skal være _påkrevd lesing_ eller _valgfritt/anbefaltkvalitet_

---

**Merknader:**
- Denne oppgaven er ren analyse og test — ingen kodingendringer eller styringsoppdateringer er påkrevd før Fase 1–3 er ferdig
- Test hele scenarioene med faktisk bruker eller AI-simulator, ikke bare gjennomlesing
- Offentlig rapport skal bruke saniterte observasjoner. Eksakte chatutskrifter brukes bare i en godkjent privat testflate når de er nødvendige for verifisering.
