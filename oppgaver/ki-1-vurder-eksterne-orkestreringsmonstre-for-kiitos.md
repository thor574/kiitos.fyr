## [ki-1] Vurder eksterne orkestreringsmønstre for kiitos

- Oppdaget: 2026-06-04
- Kilde/sak: samtale om Addy Osmani, Bito AI Architect og andre kjente agent-/skillmiljøer
- Prioritet: P2
- Estimat: M
- Status: ny
- Eier: ubestemt

### Hva er observert
Kiitos har allerede vurdert og innarbeidet utvalgte mønstre fra Addy Osmani sine agent-skills og Bito AI Architect. De ble oppdaget noe tilfeldig. Det finnes flere kjente miljøer og verktøy som har modne mønstre for agentorkestrering, skills, modes, regler, handoff, verktøygrenser, guardrails og fleragentflyt.

Foreløpige kandidater som bør vurderes:

- Anthropic Claude Code Skills / Agent Skills
- Roo Code custom modes og Orchestrator
- Aider ask/code/architect-flyt
- Continue.dev regler, prompts, modellroller og MCP-verktøy
- Cursor regler, prompts, skills og planmodus
- OpenAI Agents SDK
- Microsoft Semantic Kernel Agent Orchestration
- Microsoft AutoGen
- LangGraph / LangChain
- CrewAI
- MetaGPT
- Cline / Memory Bank-miljøet

### Foreslått retning
Gjør en egen kartleggings- og destilleringssats:

1. Velg et lite antall primærkilder, trolig Claude Code Skills, Roo Code, Aider og Semantic Kernel først.
2. Skill mellom mønstre som passer som kiitos-skills, agentmaler, styringsprinsipper, validatorer eller bare inspirasjon.
3. Ikke importer store tekstmengder; destiller mønstre til kiitos sin lagmodell, norske begreper og eksisterende skill-anatomi.
4. Vurder om kiitos trenger en egen orkestreringsguide eller beslutningstabell for når agent, skill, Plan, Explore, review-vakt, handoff eller fleragentflyt skal brukes.
5. Hvis nye mønstre tas inn, oppdater kreditering og plasser varige regler i riktig kanonisk eierfil.

### Risiko ved å vente
Kiitos kan gå glipp av etablerte orkestreringsmønstre som allerede er utprøvd andre steder, eller fortsette å oppdage dem tilfeldig og dermed få ujevn kreditering, svakere prioritering og mer usystematisk innarbeiding.

### Referanser
- CREDITS.md:21
- guide/skill-anatomi.md:1
- guide/instruksintegritet.md:1
- guide/oppgave-parkering.md:1
- https://code.claude.com/docs/en/skills
- https://roocodeinc.github.io/Roo-Code/features/custom-modes
- https://aider.chat/docs/usage/modes.html
- https://docs.continue.dev/customize/overview
- https://openai.github.io/openai-agents-python/
- https://learn.microsoft.com/en-us/semantic-kernel/frameworks/agent/agent-orchestration/