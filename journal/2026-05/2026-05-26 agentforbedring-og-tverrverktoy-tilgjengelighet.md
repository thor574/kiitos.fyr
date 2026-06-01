# KI-instruks 1
> Vurder om agent001 er bra nok.

## Vurdering av agent001

### Styrker
- Tydelig rolledefinisjon: lesende speider, aldri implementerende.
- Godt strukturert svarformat (Prosjekt → Ankre → Hvorfor → Første sjekk → Neste steg).
- Fornuftige eksklusjonsregler (`journal/**`, `Servers/**`).
- Gode eksempelforespørsler og ren overlevering til hovedagent.

### Svakheter identifisert
1. **Utdatert arbeidsromskart (punkt 2):** Manglet `kiitos.lag.kanalregistrene` og `kiitos.pro.th`. Bare K2-familien, K1, kdb og npi var nevnt.
2. **Ingen kobling til kiitos-instrukskjeden:** Nevnte ikke `velkommen.md` → instrukskjede-mønsteret.
3. **Overlapp med agent002 og agent003:** Grensen mellom «finn riktig prosjekt» (001), «finn minste instruksflate» (002) og «triager en oppgave» (003) er tynn.
4. **Mangelfull NPI-kontekst:** NPI beskrevet kun som «`npiboot`».

### Konklusjon
Strukturelt solid, men utdatert domenekunskap. Anbefalt oppdatering av punkt 2 og tillegg av kiitos-kjedebevissthet.



# KI-instruks 2
> Ja, og juster gjerne så alle disse agentene finnes av alle KI vi jobber med.

## Endringer utført

### agent001 oppdatert (.claude/agents/)
- Punkt 2: Nytt, korrekt arbeidsromskart med alle røtter (kiitos, kiitos.lag.kanalregistrene, kiitos.pro.th) og prosjektrøtter (inkl. NPI med teknologibeskrivelse).
- Nytt punkt 3: Kiitos-instrukskjedebevissthet (`AGENTS.md` → `velkommen.md` → videre).
- Punktene omnummerert (3→4 … 7→8).

### Tverrverktøy-tilgjengelighet
- Opprettet `.github/agents/` med alle 5 agenter (agent001–agent005) for Copilot og andre GitHub-orienterte verktøy. Identisk innhold, uten Claude-spesifikk `tools`-felt.
- Oppdatert «Claude-agent» → «KI-agent» i alle 5 `.claude/agents/`-filer for verktøyuavhengig formulering.
- Oppdatert `AGENTS.md` i kiitos-roten med full agenttabell og peker til definisjonsfilene.
- Oppdatert `AGENTS.md` i `kiitos.lag.kanalregistrene` med agenttabell.
- Oppdatert `AGENTS.md`-malen i `maler/felles/` med agenttabell.

### Endrede filer
- [.claude/agents/agent001.agent.md](../../.claude/agents/agent001.agent.md) — Oppdatert arbeidsromskart, kiitos-kjede, KI-agent
- [.claude/agents/agent002.agent.md](../../.claude/agents/agent002.agent.md) — Claude-agent → KI-agent
- [.claude/agents/agent003.agent.md](../../.claude/agents/agent003.agent.md) — Claude-agent → KI-agent
- [.claude/agents/agent004.agent.md](../../.claude/agents/agent004.agent.md) — Claude-agent → KI-agent
- [.claude/agents/agent005.agent.md](../../.claude/agents/agent005.agent.md) — Claude-agent → KI-agent
- [.github/agents/agent001.agent.md](../../.github/agents/agent001.agent.md) — Ny, for Copilot
- [.github/agents/agent002.agent.md](../../.github/agents/agent002.agent.md) — Ny, for Copilot
- [.github/agents/agent003.agent.md](../../.github/agents/agent003.agent.md) — Ny, for Copilot
- [.github/agents/agent004.agent.md](../../.github/agents/agent004.agent.md) — Ny, for Copilot
- [.github/agents/agent005.agent.md](../../.github/agents/agent005.agent.md) — Ny, for Copilot
- [AGENTS.md](../../AGENTS.md) — Oppdatert med agenttabell
- [kiitos.lag.kanalregistrene/AGENTS.md](../../../kiitos.lag.kanalregistrene/AGENTS.md) — Oppdatert med agenttabell
- [maler/felles/AGENTS.md](../../maler/felles/AGENTS.md) — Oppdatert med agenttabell

### Status
✅ Fullført. Agentene finnes nå fra tre inngangsflater: `.github/agents/`, `.claude/agents/` og `AGENTS.md`.



# KI-instruks 3
> Journalfør med standardvalg.

Journalført til `journal/2026-05/2026-05-26 agentforbedring-og-tverrverktoy-tilgjengelighet.md`.

Commit-forslag: `fix(kiitos) agentforbedring og tverrverktøy-tilgjengelighet`
