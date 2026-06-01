# 2026-05-26 Agentmaler og arbeidsromsflytting

## Brukerinstruks (ordrett)

> Disse agentene vi har.... Meningen er at jeg snakker med deg i et høynivå språk, mens du leser en hel rekke instruksfiler etter behov, og så kaller agentene etter behov. Det burde ikke være slik at jeg må identifisere og velge en agent basert på hva jeg ønsker å gjøre. Det er et detaljert nivå som jeg tenker du bør gjøre.

> Samtidig så ser det ut til at agentene ikke er i arbeidsrommets mappe, kiitos.lag.kanalregistrene som er roten i workspace, men de ligger i kiitos som er en ekstra mappe som er lagt inn. Hva tenker du om det? Skal vi flytte dem? De ser jo ut til å være arbeidsromspesifikke. Samtidig kunne vi hatt noen maler i kiitos for at et installasjonstrinn hadde laget dem fra malene, tilpasset det nye arbeidsrommet, typisk etter at brukeren har lagt til nye prosjekter.

## Utført arbeid

### 1. Designbeslutning: to-lags agentmodell

Agentfilene inneholdt en blanding av universelle roller (speider, triager, review-vakt osv.) og arbeidsromsspesifikk kunnskap (prosjektliste, søsterrelasjoner, eksempler). Besluttet å dele i to lag:

- **Maler** i `kiitos/maler/felles/.github/agents/` — universelle agentroller med plassholdere.
- **Aktive agenter** i hvert arbeidsroms `.github/agents/` — generert fra malene, tilpasset med prosjektoversikt og relasjoner.

### 2. Opprettet 5 agentmaler med plassholdere

Filer i `kiitos/maler/felles/.github/agents/`:
- `agent001.agent.md` — plassholder: `{{PROSJEKTOVERSIKT}}`, `{{EKSEMPLER}}`
- `agent002.agent.md` — plassholder: `{{EKSEMPLER}}`
- `agent003.agent.md` — plassholder: `{{EKSEMPLER}}`
- `agent004.agent.md` — plassholder: `{{EKSEMPLER}}`
- `agent005.agent.md` — plassholder: `{{SØSTERRELASJONER}}`, `{{EKSEMPLER}}`

### 3. Flyttet aktive agenter til arbeidsromsroten

Opprettet 5 arbeidsromsspesifikke agenter i `kiitos.lag.kanalregistrene/.github/agents/` med utfylte plassholdere (prosjektliste, søsterrelasjoner, konkrete eksempler).

### 4. Slettet originaler

Fjernet alle 10 agentfiler fra `kiitos/.github/agents/` og `kiitos/.claude/agents/`. Mappene er nå tomme.

### 5. Oppdatert AGENTS.md (3 steder)

- `kiitos/AGENTS.md` — endret fra «tilgjengelige agenter» til «agentmaler» med plassholdertabell.
- `kiitos.lag.kanalregistrene/AGENTS.md` — peker nå til lokale `.github/agents/`.
- `kiitos/maler/felles/AGENTS.md` — peker til lokale agenter, forklarer mal-opphav.

### 6. Installasjonsveiledning utvidet

`kiitos/guide/installasjon.md` oppdatert med:
- Fase 4 / Delt arbeidsrom: nytt steg 4 for agentgenerering fra maler.
- Fase 4 / Privat arbeidsrom: peker til samme prosedyre.
- Påmønstring av nytt prosjekt: nytt steg 4 for oppdatering av agenter når prosjektstruktur endres.

## Status
Ferdig. Agentene vises nå fra `kiitos.lag.kanalregistrene` i VS Code og plukkes opp korrekt av Copilot.
