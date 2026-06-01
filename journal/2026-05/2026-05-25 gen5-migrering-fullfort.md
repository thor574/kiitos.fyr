# 2026-05-25 Gen5-migrering fullført

## Sammendrag

Fullstendig migrering av kiitos fra gen4 (monolittisk `kiitos.hkdir/arbeidsrom.kanalregistrene/`) til gen5 (modulær 4-lags arkitektur). Bygget nytt ved siden av — gammelt oppsett ble aldri rørt under migreringen.

## Ny arkitektur

```
kiitos (kiitos.5/)                    ← universelt, åpen kildekode
  └─ kiitos.lag.<navn>                ← delt arbeidsrom for et lag
       └─ kiitos.pro.<bruker>        ← personlig profil (valgfritt)
            └─ prosjekt (.kiitos/)   ← prosjektnær styring
```

## Hva ble gjort

### Fase A — kiitos.5/ (universelt repo)
- Kopiert og omskrevet 11 guider fra `guide.univers/` → `guide/`
- Merget journal fra to arbeidsrom → `journal/`
- 16 delte skills → `.github/skills/`
- 5 Claude-agenter → `.claude/agents/`
- Omskrevet `guide/kiitos.md` og `styringsgrunnlag/begrepsmatrise.md` for 4-lagsmodellen
- Opprettet `velkommen.md` med deteksjonslogikk (skann workspace-røtter, les type, sjekk profil, pref-bootstrap)

### Fase B — kiitos.pro.th/ (personlig profil)
- Opprettet med velkommen.md, pref-fil, oppgaver, kompetanse, guide/min-rolle.md

### Fase C — kiitos.lag.kanalregistrene/ (delt arbeidsrom)
- Kopiert arbeidsromsspesifikt innhold (guide, styringsgrunnlag, journal, oppgaver, spesifikasjoner, analyse)
- Fjernet alt `*.univers/`-innhold og personlige mapper
- Opprettet `velkommen.md` med `<!-- kiitos-type: delt -->`
- Opprettet workspace-mal og .gitignore
- Bulk-oppdatert alle `*.univers/`-referanser til gen5-stier

### Fase D — kiitos.th/arbeidsrom.th/ (privat arbeidsrom, refaktorert)
- Slettet `guide.univers/`, `styringsgrunnlag.univers/`, `journal.univers/`, `.claude/`, `.codex/`, 16 delte skills, pref-mal
- Beholdt 3 lokale skills (kartlegging, penger, ukeplan)
- Oppdatert `velkommen.md` med `<!-- kiitos-type: privat -->`
- Opprettet workspace-mal

### Fase E — Installasjonsdokumentasjon
- Omskrevet `guide/installasjon.md` for gen5 (3 nivåer: bruk, personalisering, nytt arbeidsrom)
- Omskrevet `guide/installasjon-kjerne.md`
- Opprettet maler i `maler/` (delt-arbeidsrom, privat-arbeidsrom, felles)

### Fase F — Cutover
- Verifisert alle fire mapper
- Opprettet workspace-filer: `kiitos.lag.kanalregistrene/kanalregistrene.code-workspace` og `kiitos.th/th-gen5.code-workspace`
- Arkivert `kiitos.hkdir/` med `ARKIVERT.md`

## Nøkkelbeslutninger

- **Bygg nytt ved siden av, switch når klart** — null risiko underveis
- **`*.univers/`-suffikset droppet** — universelt innhold bor i kiitos-roten uten suffikser
- **Arbeidsromtype via HTML-kommentar** — `<!-- kiitos-type: delt|privat -->` i velkommen.md
- **Hybrid skills** — base-skills i kiitos, arbeidsrom kan ha egne; lokal vinner ved navnekollisjon
- **Personlig profil som eget lag** — `kiitos.pro.*` er valgfritt og tverrarbeidsromlig
- **Pref-fil plassering** — i `kiitos.pro.*` for delte arbeidsrom, direkte i arbeidsrommet for private

## Berørte mapper

| Mappe | Handling |
|---|---|
| `kiitos.5/` | Ny — universelt kiitos-repo |
| `kiitos.lag.kanalregistrene/` | Ny — delt arbeidsrom |
| `kiitos.pro.th/` | Ny — personlig profil |
| `kiitos.th/arbeidsrom.th/` | Refaktorert — fjernet universelt innhold |
| `kiitos.hkdir/` | Arkivert — merket med ARKIVERT.md |
