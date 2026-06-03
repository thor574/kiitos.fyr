# Skill-anatomi

Denne guiden eier kiitos-standarden for `.github/skills/<navn>/SKILL.md`.

Kiitos bruker skills som **maskiner**: de skal være lette å oppdage, lette å aktivere og konkrete nok til at KI faktisk følger arbeidsflyten. Samtidig skal `SKILL.md` ikke eie regler som hører hjemme i guider, styringsgrunnlag eller lokale kjernefiler.

## Grunnkontrakt

Hver skill skal ligge slik:

```text
.github/skills/<navn>/
  SKILL.md
```

`SKILL.md` skal ha YAML-frontmatter:

```yaml
---
name: skill-navn
description: "Brukes når ..."
---
```

Krav:

- `name` skal samsvare med mappenavnet.
- `description` skal si både hva maskinen gjør og når den skal brukes.
- Norske beskrivelser bør starte med eller inneholde `Brukes når ...` når det passer.
- Én skill skal ha ett tydelig hovedansvar.

## Kiitos-sjanger

Kiitos skiller mellom to vanlige skill-typer:

1. **Operativ skill**: `SKILL.md` eier hovedflyten direkte.
2. **Aktiveringswrapper**: `SKILL.md` finner riktig modus, leser kanonisk eierfil og legger til lokale regler.

Aktiveringswrappere er ønsket i kiitos når det beskytter lagvis DRY. De skal likevel gjøre det raskt å se:

- hva maskinen aktiverer
- hvilken fil som eier hovedreglene
- hvilke lokale tillegg wrapperen eier
- hvilke kontroller som viser at maskinen er brukt riktig

## Anbefalt struktur

Nye og vesentlig endrede skills bør bruke disse seksjonene der de passer:

```markdown
# Tittel

## Formål
Kort forklaring av hva maskinen gjør og hvorfor den finnes.

## Når bruke
Konkrete utløsere og eventuelle situasjoner der maskinen ikke skal brukes.

## Arbeidsflyt
Nummererte steg eller tydelige moduser.

## Anti-rasjonalisering
| Fristelse | Hvorfor den er feil |
|---|---|
| Typisk snarvei KI kan ta | Konkret grunn til at snarveien gir dårligere arbeid |

## Røde flagg
- Observerbare tegn på at maskinen brukes feil.

## Verifikasjon
- [ ] Konkret bevis på at arbeidsflyten ble fulgt.
- [ ] Målrettet sjekk, kommando, filreferanse eller brukerbekreftelse.
```

For aktiveringswrappere kan `Arbeidsflyt` være kort, men `Verifikasjon` skal fortsatt si hva KI må kunne vise etter bruk. Hvis detaljene ligger i en kanonisk guide eller `kjerne.md`, kan verifikasjonen peke dit i stedet for å duplisere sjekklisten.

## Lånte mønstre

### Verifikasjon

Verifikasjon skal være bevisbar. Gode eksempler:

- `node scripts/valider-skills.js` er kjørt og resultatet er referert.
- Målrettet søk viser at en gammel peker ikke lenger finnes.
- Brukeren har bekreftet valget som maskinen krevde før filendring.

Dårlige eksempler:

- «Sjekk at alt er greit.»
- «Vær sikker på at dette virker.»

### Røde flagg

Røde flagg skal beskrive observerbar feilbruk, ikke generelle råd. Eksempler:

- KI hopper over kanonisk eierfil og handler bare ut fra wrapperen.
- KI gjør bred omskriving før den har klassifisert avvik.
- KI avslutter uten å vise hvilken validering som faktisk ble gjort.

### Anti-rasjonalisering

Anti-rasjonalisering skal stoppe typiske agentunnskyldninger. Tabellen skal være kort og presis.

Eksempel:

| Fristelse | Hvorfor den er feil |
|---|---|
| «Dette er bare en liten skill, verifikasjon trengs ikke.» | Små skills er ofte inngangsflater. Uklare innganger gir feil aktivering senere. |
| «Wrapperen peker jo videre, så den trenger ikke egne røde flagg.» | Wrapperen er discovery-flaten. Den må si hvordan feil aktivering ser ut. |

### Lett validering

Fyret har en enkel validator:

```powershell
node scripts/valider-skills.js
```

Validatoren skal kunne kjøres uten ekstra pakker. Den feiler på strukturelle feil, og varsler om manglende anbefalte seksjoner. Bruk streng modus når alle eksisterende skills i et område er oppdatert:

```powershell
node scripts/valider-skills.js --strict
```

## Migrering

Eksisterende kiitos-skills trenger ikke masseomskrives bare for å følge ny struktur. Når en skill likevel endres vesentlig, bør den få:

1. `## Anti-rasjonalisering`
2. `## Røde flagg`
3. `## Verifikasjon`

Dette gjør forbedringen gradvis, sporbar og trygg.

## Kanoniske referanser

- `.github/skills/`
- `guide/instruksintegritet.md`
- `scripts/valider-skills.js`