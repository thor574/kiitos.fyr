# Credits

Denne filen beskriver opphav og kreditering for kiitos. Den erstatter ikke lisensvilkår; lisens fastsettes separat.

## Hovedopphav

Kiitos er i hovedsak laget av **Thor Hovden**.

Thor Hovden er hovedforfatter, idegiver og kurator for rammeverket, inkludert lagmodellen, begrepsbruken, guidene, journalmodellen, oppgaveflyten, agentmalene og de fleste maskinene i `.github/skills/`.

Mange filer er utviklet og revidert i samtaler med KI-assistenter. Det endrer ikke hovedopphavet: Thor Hovden har styrt retning, valg, struktur og endelig innhold.

## Eksterne skills og inspirasjon

Noen skills og skill-mønstre har ekstern opprinnelse eller er inspirert av arbeid utenfor kiitos. Når slikt materiale tas inn, skal det krediteres tydelig og tilpasses kiitos sin lagmodell, språkføring og regelplassering.

### Tidligere innhentede skills

Enkelte eldre skills ble tidligere hentet inn fra en ekstern person eller kilde og deretter bearbeidet inn i kiitos. Der konkret opphav ikke er dokumentert i aktiv fil, skal denne samlede krediteringen beholdes til opphavet eventuelt kan presiseres bedre.

### Addy Osmani: agent-skills

I juni 2026 ble [addyosmani/agent-skills](https://github.com/addyosmani/agent-skills), laget av Addy Osmani, vurdert som inspirasjon for kiitos.

Kiitos lånte særlig fire mønstre fra dette arbeidet:

1. eksplisitt verifikasjon i skills
2. røde flagg for feil bruk
3. anti-rasjonalisering mot typiske agentunnskyldninger
4. lett valideringsscript for skill-struktur

Dette ble innarbeidet som kiitos-standard i `guide/skill-anatomi.md`, `guide/instruksintegritet.md` og `scripts/valider-skills.js`, med kiitos sin egen wrappermodell og lagvise faktaeierskap beholdt.

### Bito AI Architect: sammenhengskart, arbeidsstrømspesifikasjoner og kompleksitetsstyring

I juni 2026 ble [Bito AI Architect](https://docs.bito.ai/ai-architect/key-features), laget av Bito, vurdert som inspirasjon for kiitos.

Kiitos lånte særlig fire mønstre fra dette arbeidet:

1. relasjonsbasert systemkontekst som inspirasjon til kiitos-begrepet `sammenhengskart`
2. selvstendige arbeidsstrømspesifikasjoner for større eller tverrgående arbeid
3. kompleksitetsstyrt triage før tyngre agentflyt aktiveres
4. iterativ planrevisjon når krav, funn eller premisser endrer seg

Dette ble innarbeidet som kiitos-prinsipper i `styringsgrunnlag/designvalg.md` (`DV-KIITOS-20` til `DV-KIITOS-22`), med kiitos sin egen lagmodell, norske begreper, lagvise DRY og krav om bevisbar verifikasjon beholdt. Kiitos tar ikke inn Bito som verktøyavhengighet eller produktintegrasjon.

## Ved nye lån

Når nye eksterne skills, mønstre eller formuleringer tas inn i kiitos:

1. Krediter opphavsperson eller prosjekt her når det er kjent.
2. Behold lenke til originalkilde når den finnes.
3. Skill mellom direkte innhentet materiale, bearbeidet materiale og ren inspirasjon.
4. Følg opprinnelig lisens når materialet har lisensvilkår.
5. Plasser varige kiitos-regler i riktig kanonisk eierfil, ikke bare i en importert skill.
6. Når bidraget er avgrenset og relevante spesifikasjonskoder eller andre referansekoder finnes, knytt krediteringen til de konkrete kodene i stedet for å antyde bredere opphav.