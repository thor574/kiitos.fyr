## [ki-4] Skill-anatomi-utvidelse for eldre skills

- Oppdaget: 2026-07-03
- Kilde/sak: full integritetssjekk med `integritetsjustere-kiitos`
- Prioritet: P3
- Estimat: M
- Status: ny
- Eier: ubestemt

### Hva er observert

`node scripts/valider-skills.js` rapporterer 49 warnings fordelt på 18 av 19 skills. Ingen errors.

To typer warnings:

1. **Manglende seksjoner** (de fleste): `Anti-rasjonalisering`, `Røde flagg` og `Verifikasjon` mangler i eldre skills som `forbindelsesfinner`, `fortsett`, `journal`, `oppia`, `regelflyt`, `utforsk` m.fl.
2. **Svak description** (noen): `evaluering-kvalitet`, `evaluering-lukk`, `evaluering-start`, `evaluering-valider`, `guidet-tur`, `list`, `termer` mangler tydelig bruksutløser med «Brukes når ...»-formulation.

### Bakgrunn

Per `guide/skill-anatomi.md` er disse seksjonene anbefalt for *nye og vesentlig endrede* skills — ikke et krav for eksisterende skills uten vesentlige endringer. Masseomskriving uten konkret endringsgrunn er ikke riktig tilnærming (se SKILL.md anti-rasjonalisering for `integritetsjustere-kiitos`).

### Foreslått tilnærming

Legg til manglende seksjoner inkrementelt, én skill om gangen, når den aktuelle skill'en uansett endres eller brukes aktivt i en sak.

Skills som kan prioriteres først (flest avvik og aktiv bruk):
- `regelflyt` — brukes jevnlig, mangler alle tre seksjoner
- `oppia` — brukes jevnlig, mangler alle tre seksjoner
- `utforsk` — brukes jevnlig, mangler alle tre seksjoner
- `forbindelsesfinner` og `motsigelsesfinner` — periodiske skills, mangler alle tre seksjoner

### Verifikasjon

- [ ] `node scripts/valider-skills.js` kjøres etter hver skill-oppdatering og gir 0 errors, redusert antall warnings.
