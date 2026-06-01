---
name: termer
description: "Når du skal diskutere, foreslå eller formalisere terminologi og ordbruk. Strukturerer hvordan engelske ord erstattes med norske termer gjennom en 4-trinns arbeidsflyt."
---

# Ordliste og terminologi-arbeitsflyt

## Formål
Håndtere engelske ord som sniker seg inn, og strukturere prosessen for å vedta, formalisere og implementer norsk ordbruk. **I benk:** fokus på IT-termer, API-dokumentasjon, og kodekonvensjonale ord.

---

## Prosess (4 steg)

### **Steg 1: Trenger hjelp med å finne norske ord**
Du (menneske) legger inn ord som trenger oversettelse:
- Legg dem inn som punktliste
- Hold alfabetisk rekkefølge
- Eksempel: `backend`, `deploy`, `query parameter`

Jeg (KI) foreslår norske alternativer ↓

---

### **Steg 2: Forslag (til vurdering)**
Jeg (KI) presenterer engelske ord med 1–3 norske alternativer:
- Jeg holder alfabetisk rekkefølge
- Du (menneske) vurderer forslagene

Du velger endelig ordbruk ↓

---

### **Steg 3: Beslutninger (til implementasjon)**
Du (menneske) bestemmer det endelige ordet og flytter det hit:
- **Hold alfabetisk rekkefølge** når du legger inn
- Skriv **innfør termer** når du vil at jeg implementer

Jeg (KI) implementerer ↓

---

### **Steg 4: Aksepterte forslag (implementert)**
Jeg (KI) gjør følgende:
1. Flytter ordet fra Beslutninger til Aksepterte
2. Holder alfabetisk rekkefølge
3. Bytter ordbruken i relevante dokumenter
4. Oppdaterer terminologi-guiden hvis nødvendig

---

## Kommandoer

**`innfør termer`** – Implementer alle ord i Beslutninger-seksjonen:
- Flytt til Aksepterte
- Bytt til valgt ordbruk i dokumentene
- Oppdater guider

---

## Spesielle hensyn for benk

Når du endrer ord som brukes i API-kontrakter eller databaseskjema, må endringen **ikke bryte eksisterende klientkode**. Bruk mapping-lag eller deprecation-periode hvis nødvendig.

---

## Hvor finner jeg ordlisten?

Se `guide/termer.md` i ditt arbeidsrom for den aktuelle ordlisten.

---

## Tips

- Hold ordlistene alfabetiske — det gjør det lett å finne ord
- Bruk denne prosessen for alle engelske ord, ikke bare IT-termer
- Hvis jeg foreslår dårlige ord: si beskjed, vi diskuterer!
