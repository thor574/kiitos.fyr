# KI-instruks 1
> Legg til en oppgave i kiitos.fyr, med å teste https://github.com/addyosmani/agent-skills (laget av Addy Osmani, en direktør for Cloud AI i Google) og vurdere om det er noe vi kan  tipse om å prøve ut.

## Problem: Oppgave for vurdering av agent-skills

Brukeren ba om å legge inn en oppgave i `kiitos.fyr` for å teste Addy Osmani sitt `agent-skills`-repo og vurdere om det har noe som er verdt å tipse andre om.

### Endringer utført

- Opprettet `oppgaver/ki-1-test-agent-skills.md`.
- Beskrev bakgrunn, vurderingsspørsmål, foreslått leveranse og risiko ved å vente.
- Validerte oppgavefila med VS Code-diagnostikk.

### Status

Oppgave opprettet i fyret som universell kiitos-sak.



# KI-instruks 2
> Det er faktisk lagt til som prosjekt her, du kan se på det, om det har noen verdi, for oss som bruker kiitos.

## Problem: Vurdering av agent-skills som inspirasjon for kiitos

Brukeren opplyste at `agent-skills` allerede lå som prosjekt i arbeidsrommet, og ba KI vurdere faktisk verdi for kiitos-brukere.

### Analyse

KI leste README, skill-oversikt, Copilot-oppsett, representative skills, agentpersonaer, orkestreringsmønstre og repoets eget valideringsscript. Repoet fremstod som en moden instruks- og arbeidsflytpakke, ikke primært som kjørbar kode.

### Funn

- Repoet har 23 skills, 3 agentpersonaer, IDE-oppsett og referansesjekklister.
- Styrken ligger i prosessform: triggere, røde flagg, anti-rasjonalisering og verifikasjon.
- Copilot-støtten er mer manuell enn Claude Code-støtten, men innholdet kan likevel brukes selektivt.
- Repoets eget valideringsscript ble kjørt lokalt med resultat: `23 skills checked — 0 error(s), 0 warning(s) — PASSED`.

### Endringer utført

- Oppdaterte `oppgaver/ki-1-test-agent-skills.md` med foreløpig vurdering.

### Status

Konklusjon: verdt å tipse om som selektivt prøveprosjekt, ikke importere ukritisk.



# KI-instruks 3
> Ok, sammenlign skill-anatomy med kiitos

## Problem: Sammenligning av agent-skills sin skill-anatomi med kiitos

Brukeren ba om en konkret sammenligning mellom `agent-skills/docs/skill-anatomy.md` og kiitos sin eksisterende skill-praksis.

### Analyse

KI sammenlignet `skill-anatomy.md` med representative kiitos-skills i `kiitos.fyr/.github/skills/`. `agent-skills` bruker en strengere formell anatomi der hver skill normalt eier hele arbeidsflyten selv. Kiitos bruker samme grunnanker (`SKILL.md`, `name`, `description`, én mappe per skill), men har en tydeligere wrappermodell der `SKILL.md` ofte aktiverer kanoniske guider eller `kjerne.md`.

### Viktige sammenligningspunkter

- `agent-skills` har eksplisitte seksjoner for `Verification`, `Red Flags` og `Common Rationalizations`.
- Kiitos har ofte tilsvarende intensjon i `Kvalitetskrav`, `Begrensninger` eller `Viktige regler`, men ikke som fast struktur.
- Kiitos sin styrke er lagvis DRY, kanonisk eierfil og aktiveringswrapper.
- Et tydelig hull i kiitos var manglende lett validator for skill-form.

### Endringer utført

- Oppdaterte `oppgaver/ki-1-test-agent-skills.md` med sammenligningsnotat.
- Validerte oppgavefila med VS Code-diagnostikk og `git diff --check`.

### Status

Anbefaling: ikke kopier `agent-skills` én til én; lån verifikasjon, røde flagg, anti-rasjonalisering og lett validator.



# KI-instruks 4
> Ja, lån de fire.

## Problem: Innføre fire mønstre fra agent-skills i kiitos

Brukeren godkjente anbefalingen om å låne fire mønstre: verifikasjon, røde flagg, anti-rasjonalisering og et lett valideringsscript.

### Løsningsstrategi

KI valgte å gjøre dette som en kanonisk kiitos-standard i stedet for å masseomskrive alle eksisterende skills. Endringen ble lagt på eierflatene først, og eksisterende skills kan migreres gradvis når de likevel endres.

### Endringer utført

- Opprettet `guide/skill-anatomi.md` som kanonisk kiitos-standard for skill-struktur.
- La inn anbefalt struktur med `Anti-rasjonalisering`, `Røde flagg` og `Verifikasjon`.
- La inn validatoren `scripts/valider-skills.js`.
- Koblet `guide/kiitos.md` til den nye guiden.
- Utvidet `guide/instruksintegritet.md` med `skill-anatomi` som egen kontrollakse.
- Oppdaterte `.github/skills/integritetsjustere-kiitos/SKILL.md` slik at den bruker og selv følger den nye standarden.
- Oppdaterte `oppgaver/ki-1-test-agent-skills.md` med implementeringsnotat og validatorresultat.

### Validering

- `node scripts/valider-skills.js`: `15 skills checked - 0 error(s), 45 warning(s) - PASSED WITH WARNINGS`.
- `integritetsjustere-kiitos` validerer som `OK`.
- Varslene er forventet migreringsgjeld for eldre skills.
- `git diff --check`: rent.
- VS Code-diagnostikk: ingen feil i berørte filer.

### Status

De fire mønstrene er innført som kiitos-standard. Eksisterende skills er ikke masseomskrevet; videre migrering kan tas gradvis.



# KI-instruks 5
> Journalfør.

## Problem: Journalføring og opprydding av løst oppgavefil

Brukeren ba om journalføring. Journalmaskinen krevde avklaring før skriving.

## KI-avklaringsspørsmål

KI spurte om tema, dekning, presiseringer, fremhevinger, parkering og løste oppgaver. Brukeren valgte:

- Tema: `agent-skills-skill-anatomi`
- Dekning: hele samtalen
- Presiseringer: ingen korrigeringer
- Fremhevinger: løft de fire lånte mønstrene
- Parkering: nei
- Løste oppgaver: slett `oppgaver/ki-1-test-agent-skills.md` som løst

### Status

Denne journalen dokumenterer saken. Oppgavefilen slettes etter at journalfilen er skrevet og validert.