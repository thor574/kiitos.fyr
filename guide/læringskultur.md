# Læringskultur

Denne guiden definerer hvordan kiitos.fyr fremmer en organisasjons- og læringskultur for evalueringer, i tråd med Bastøes femte forutsetning.

## Hurtigoppslag

- **Formål**: Sikre at evalueringer bidrar til kontinuerlig forbedring
- **Prinsipp**: Åpenhet, deling, handling
- **Kanonisk**: [evalueringsrammeverk.md](evalueringsrammeverk.md)

---
## Prinsipper

### 1. Åpenhet
- **Hva**: Alle evalueringsresultater skal være tilgjengelige
- **Hvor**: `guide/lærdommer/` og prosjektets `.kiitos/lærdommer/`
- **Unntak**: Sensitive data lagres i `oppgaver.mine/` eller private områder

### 2. Deling
- **Når**: Umiddelbart etter evalueringens avslutning
- **Hvordan**: Strukturert dokumentasjon i `lærdommer/[navn].md`
- **Format**: Bruk malen [maler/lærdom-mal.md](../../maler/lærdom-mal.md)

### 3. Handling
- **Krav**: Hver anbefaling må ha en oppgave i `oppgaver/`
- **Sporing**: Oppgaver knyttes til evaluerings-ID
- **Oppfølging**: Status oppdateres kvartalsvis

---
## Læringsprosess

### 1. Identifisere lærdommer
- Under evalueringsprosessen: Noter funn som kan generaliseres
- Ved avslutning: Gjennomgå alle funn for lærdomspotensial
- Kriterier: Funn som gjelder flere prosjekter, har generell gyldighet

### 2. Dokumentere lærdommer
**Innhold i lærdom-dokument**:
```markdown
# Lærdom: [kort beskrivelse]

## Kontekst
- **Evaluering**: [lenke til evaluering]
- **Dato**: YYYY-MM-DD
- **Prosjekt**: [navn]

## Lærdom
[Beskrivelse av hva som ble lært]

## Påvirkning
- **Positiv**: [hva som fungerte]
- **Negativ**: [hva som ikke fungerte]
- **Anbefaling**: [hva som bør gjøres annerledes]

## Kategorier
- [ ] Metodikk
- [ ] Prosess
- [ ] Verktøy
- [ ] Samhandling
- [ ] Kvalitetssikring

## Lenker
- [Relaterte evalueringer]
- [Relaterte lærdommer]
```

### 3. Deling
- **Plassering**: `guide/lærdommer/[navn].md` for universelle lærdommer
- **Lokal**: `.kiitos/lærdommer/[navn].md` for prosjektspesifikke
- **Indeks**: Oppdater `guide/lærdommer/README.md` med lenke

### 4. Bruk
- **Søk**: Bruk `/maskin søk-lærdommer [emne]` for å finne relevante lærdommer
- **Referanse**: Lenk til lærdommer i nye evalueringer
- **Oppdatering**: Lærdommer revideres årlig

---
## Læringskultur i praksis

### Møter
- **Evalueringsavslutning**: Dedikert tid til å identifisere lærdommer
- **Retrospektiver**: Inkluder evalueringslærdommer
- **Læringsdager**: Årlig gjennomgang av alle lærdommer

### Verktøy
- **Lærdomssøk**: `/maskin søk-lærdommer`
- **Lærdomsstatistikk**: `/maskin lærdom-statistikk` (viser mest brukte lærdommer)
- **Lærdomspåminnelse**: `/maskin påminn-lærdom` (påminner om utdaterte lærdommer)

---
## Kvalitetsindikatorer

| Indikator | Mål | Target |
|-----------|-----|--------|
| Andel evalueringer med lærdommer | % | 100% |
| Andel lærdommer brukt i nye evalueringer | % | >50% |
| Tid fra evaluering til lærdom deling | Dager | <7 |
| Andel oppgaver fra evalueringer fullført | % | >80% |

---
## Ansvar

| Rolle | Ansvar |
|-------|---------|
| **Evalueringsleder** | Sikre at lærdommer identifiseres og dokumenteres |
| **Prosjekteier** | Godkjenne lærdommer før deling |
| **Laug-leder** | Sikre at lærdommer brukes i lauge |
| **Alle** | Bidra med lærdommer fra eget arbeid |

---
## Kanoniske referanser

- [evalueringsrammeverk.md](evalueringsrammeverk.md)
- [evalueringsflyt.md](evalueringsflyt.md)
- [journal-system.md](journal-system.md)
