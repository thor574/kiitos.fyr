## [ki-3] Gjør kiitos mer token-effektiv

- Oppdaget: 2026-06-30
- Kilde/sak: gjennomgang av mattpocock/skills `/writing-great-skills`
- Prioritet: P2
- Estimat: M
- Status: ny
- Eier: ubestemt

### Hva er observert

Kiitos-skills og instruksflaten er vokst organisk og bærer sannsynligvis:
- **Sediment** — foreldede avsnitt som samler seg fordi tillegg føles trygt og sletting føles risikabelt.
- **No-ops** — setninger modellen allerede følger uten instruksen.
- **Duplication** — samme mening på flere steder i skill-filene.
- **Sprawl** — lange sjekklister og referanseblokker inlinert i SKILL.md i stedet for disklosert til sidefiler.

I tillegg er invokasjonsmodi ikke eksplisitt: det er uklart hvilke skills som er ment å rutes automatisk av KI og hvilke som bare skal trigges manuelt — noe som betyr at alle descriptions bidrar til kontekstlast uavhengig av om automatisk ruting er ønsket.

### Kilde / inspirasjon

Matt Pocock, [`/writing-great-skills`](https://github.com/mattpocock/skills/blob/main/skills/productivity/writing-great-skills/SKILL.md) (aihero.dev, v1.0 — juni 2026).

Relevante prinsipper herfra:
- **No-op-testen**: endrer setningen atferd versus KI-standard? Slett den ellers.
- **Informasjonshierarkiet**: in-skill steg → in-skill referanse → ekstern referanse (i sidefil bak peker). Flytt sjekklister og lange oppslagslister ut av SKILL.md.
- **Ledende ord**: ett sterkt ord forankrer atferd i færre tokens enn en setning med samme effekt.
- **Invokasjonsmodi**: skills uten KI-ruting bør ha human-vendt description (ikke trigger-phrasing) — null ekstra kontekstlast.
- **Router-skill**: når mange manuelle skills hoper seg opp, dekker én router-skill kognitiv last bedre enn mange separate descriptions.

Kanskje det finnes mer.  Vi håper å avklare det med en ekstra grundig fler-faset gjennomgang.

### Forslag til arbeid

1. **Kjør no-op-testen** gjennom alle SKILL.md-filer i `kiitos.fyr/.github/skills/`. Les hver setning isolert: «ville KI gjort dette uten instruksen?» Slett setninger som feiler.
2. **Flytt sjekklister ut** av evaluerings-skillene (`evaluering-kvalitet`, `evaluering-valider`) til sidefiler, og erstatt med en kontekstpeker i SKILL.md.
3. **Gjennomgå descriptions**: skille tydelig mellom skills som skal KI-rutes automatisk (rik trigger-phrasing) og skills som er rent manuelle (kort menneskevendt linje). Juster teksten deretter.
4. **Vurder ett nytt DV-KIITOS** om invokasjonsmodi tilpasset VS Code Copilot (vs. Claude Code der Pococks `disable-model-invocation` bor).
5. **Vurder om `list`-skillet dekker router-rollen** og eventuelt bør styrkes til å ta over der.

### Avgrensning

- Gjelder primært `kiitos.fyr/.github/skills/` og tilhørende instruksflate.
- Ikke en full redesign av kiitos-modellen — token-effektivitet er målet, ikke arkitekturendring.
- Laugspesifikke skills i `kiitos.laug.*` kan vurderes som oppfølging.

### Verifikasjon / ferdig når

Gjennomsnittlig SKILL.md er merkbart kortere uten tap av atferdsdekning, og alle skills har tydelig invokasjonsprofil (automatisk rutbar vs. manuell).
