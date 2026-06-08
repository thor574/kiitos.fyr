# Evalueringsflyt

Denne guiden definerer arbeidsflyten for evalueringer i kiitos.fyr, basert på Bastøes fem forutsetninger. Guiden eier den operative prosessen fra oppstart til lukking.

## Hurtigoppslag

- **Formål**: Standardisere evalueringsprosessen for konsistens og kvalitet
- **Omfang**: Alle evalueringer i fyr-, laug- og prosjektlag
- **Eier**: Denne guiden eies av fyr-laget
- **Kanoniske referanser**: [evalueringsrammeverk.md](evalueringsrammeverk.md), [journal-system.md](journal-system.md)

## Faser

### Fase 1: Initiell (Forutsetning 1 & 2)
**Varighet**: 1-3 dager
**Mål**: Klargjøre formål, omfang og metode

| Steg | Aktivitet | Utfall | Maskin |
|------|-----------|--------|--------|
| 1.1 | Definer evalueringsformål | `evaluering-formaal.md` | `/maskin evaluering-start` |
| 1.2 | Avklar evalueringomfang | `evaluering-omfang.md` | `/maskin evaluering-start` |
| 1.3 | Velg evalueringsmetode | Metodebeskrivelse i omfang | - |
| 1.4 | Godkjenn plan | Signert plan | - |

**Kvalitetskriterier**:
- Formål er SMART-formulert (Spesifikt, Målbart, Akseptabelt, Realistisk, Tidsavgrenset)
- Omfang har klare grenser (inklusjoner/eksklusjoner)
- Metode er begrunnet og egnet for spørsmålet

---

### Fase 2: Datainnsamling (Forutsetning 3)
**Varighet**: 2-10 dager
**Mål**: Samle nødvendige data systematisk

| Steg | Aktivitet | Utfall | Kvalitetssjekk |
|------|-----------|--------|----------------|
| 2.1 | Identifiser datakilder | Kildeliste | Kilder er relevante og tilgjengelige |
| 2.2 | Utvikle datainnsamlingsverktøy | Spørreskjema/intervjuguide | Verktøy testet og godkjent |
| 2.3 | Samle data | Raw data i `data/` | Data fullstendig og korrekt |
| 2.4 | Valider data | Renset data | Data konsistent og fri for feil |

**Systematiske prosesser**:
- Følg OECD DAC kriterier for datainnsamling
- Dokumenter alle kilder i `data/kilder.md`
- Bruk standardiserte verktøy der mulig

---

### Fase 3: Analyse (Forutsetning 3 & 4)
**Varighet**: 3-7 dager
**Mål**: Analysere data og trekke konklusjoner

| Steg | Aktivitet | Utfall | Verifikasjon |
|------|-----------|--------|--------------|
| 3.1 | Organiser data | Strukturert dataset | Data logisk organisert |
| 3.2 | Analyser data | Funn i `resultater/` | Funn basert på data |
| 3.3 | Tolk resultater | Tolkninger i `resultater/` | Tolkninger begrunnet |
| 3.4 | Identifiser mønstre | Mønsteranalyse | Mønstre dokumentert |

**Kvalitetsstandarder**:
- Analyse følger anerkjente metoder
- Alle funn er sporbare til data
- Tolkninger er objektive og begrunnet

---
### Fase 4: Rapportering (Forutsetning 4)
**Varighet**: 2-5 dager
**Mål**: Dokumentere funn og anbefalinger

| Steg | Aktivitet | Utfall | Sjekk |
|------|-----------|--------|-------|
| 4.1 | Skriv utkast | `evaluering-utkast.md` | Fullstendig og strukturt |
| 4.2 | Peer-review | Revisjonskommentarer | Minst 1 uavhengig reviewer |
| 4.3 | Inkorporer tilbakemelding | Revidert utkast | Alle kommentarer adressert |
| 4.4 | Finaliser rapport | `evaluering-rapport.md` | Godkjent av evalueringsleder |

**Dokumentasjonskrav**:
- Rapport følger malen i [maler/evalueringsrapport-mal.md](../../maler/felles/evalueringsrapport-mal.md)
- Alle funn er nummerert og referert
- Anbefalinger er prioriterte

---
### Fase 5: Oppfølging (Forutsetning 5)
**Varighet**: 1-2 dager
**Mål**: Sikre implementering av anbefalinger

| Steg | Aktivitet | Utfall | Oppfølging |
|------|-----------|--------|------------|
| 5.1 | Utarbeid handlingsplan | `handlingsplan.md` | Tildelte ansvarlige |
| 5.2 | Del lærdommer | `lærdommer/[navn].md` | Lagt til i felles lærdommer |
| 5.3 | Arkiver evaluering | Flyttet til `journal/evalueringer/` | Fullstendig arkiv |
| 5.4 | Lukk evaluering | Status oppdatert | `/maskin evaluering-lukk` |

**Læringskultur**:
- Lærdommer deles i `guide/lærdommer/`
- Oppgaver opprettes for hver anbefaling
- Resultater kommuniseres til stakeholdere

## Beslutningspunkter

| Beslutning | Kriterier | Ansvarlig |
|------------|-----------|-----------|
| **Gå/ikke gå videre fra Fase 1** | Formål og omfang godkjent | Prosjekteier |
| **Godta datakilder** | Kilder relevante og tilgjengelige | Evalueringsleder |
| **Godta analyse** | Analyse fullstendig og korrekt | Peer-reviewer |
| **Godta rapport** | Rapport oppfyller kvalitetsstandard | Evalueringsleder |
| **Godta handlingsplan** | Plan realiserbar og priorittert | Prosjekteier |

## Roller og ansvar

| Rolle | Ansvar | Kompetanse |
|-------|---------|------------|
| **Evalueringsleder** | Totalansvar for evaluering | Metodisk kompetanse, Bastøes rammeverk |
| **Prosjekteier** | Godkjenne formål, omfang, handlingsplan | Domeneekspertise |
| **Datainnsamler** | Samle og validere data | Datainnsamlingsmetoder |
| **Analytiker** | Analysere data | Analytiske ferdigheter |
| **Peer-reviewer** | Vurdere kvalitet | Uavhengig, metodisk kompetanse |

## Integrasjon med kiitos-modellen

### Filstruktur
```
.kiitos/
└── evaluering/
    └── [evalueringsnavn]/
        ├── evaluering-formaal.md
        ├── evaluering-omfang.md
        ├── plan.md
        ├── data/
        │   ├── kilder.md
        │   └── [datasett]
        ├── resultater/
        │   ├── funn.md
        │   └── tolkninger.md
        ├── evaluering-rapport.md
        ├── handlingsplan.md
        └── valideringsrapport.md
```

### Journalføring
- Opprett `journal/evalueringer/[navn]-start.md` ved oppstart
- Oppdater journal underveis med status
- Opprett `journal/evalueringer/[navn]-avsluttet.md` ved lukking

## Typiske feil og løsninger

| Feil | Årsak | Løsning |
|------|-------|---------|
| Evaluering tar for lang tid | Uklart omfang | Gå tilbake til Fase 1, avklar omfang |
| Data mangler | Feil datakilder | Revisjoner kildeliste, samle manglende data |
| Funn er uklare | Dårlig analyse | Involver ekstern analytiker |
| Anbefalinger ikke implementert | Mangler eierskap | Tildel ansvarlige i handlingsplan |
| Kvalitetssjekk mislykkes | Mangler dokumentasjon | Fullfør alle dokumentasjonskrav |

## Maskiner

| Maskin | Bruk | Fase |
|--------|------|------|
| `/maskin evaluering-start` | Starte evaluering | Fase 1 |
| `/maskin evaluering-valider` | Validering underveis | Alle faser |
| `/maskin evaluering-kvalitet` | Kvalitetssjekk | Fase 3-4 |
| `/maskin evaluering-lukk` | Lukke evaluering | Fase 5 |

## Kanoniske referanser

- [evalueringsrammeverk.md](evalueringsrammeverk.md)
- [journal-system.md](journal-system.md)
- [instruksintegritet.md](instruksintegritet.md)
- [maler/evalueringsrapport-mal.md](../../maler/felles/evalueringsrapport-mal.md)
- [maler/evaluering-formaal-mal.md](../../maler/felles/evaluering-formaal-mal.md)
- [maler/evalueringsflyt-mal.md](../../maler/felles/evalueringsflyt-mal.md)