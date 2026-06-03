---
name: integritetsjustere-kiitos
description: "Brukes når du vil kontrollere aktive kiitos-flater for konsistens, lagvis DRY, korrekthet og rask oppslagsbarhet, og rette små, trygge avvik i samme runde. Dekker også ren DRY-støvsuging som delmodus."
---

# Integritetsjustere kiitos

Denne maskinen er en **aktiveringswrapper** med to moduser.

Selve kontrollreglene eies av `guide/instruksintegritet.md`. Les den først og bruk den som kanonisk regelgrunnlag for hele runden.

## Modus: DRY-støvsuging

Aktiveres med `/maskin dry` eller `/maskin integritetsjustere-kiitos dry`.

DRY-modus er en smalere sweep som fokuserer på restduplisering og uklart faktaeierskap uten full integritetssjekk.

1. Avgrens sweepen først. Standard er aktive instruksflater i relevant lag og sak, ikke hele historikken.
2. Utelat `journal/`, prosjektets `.kiitos/journal/` og `oppgaver/` som standard. Ta dem bare med når bruker eksplisitt vil rydde historikk eller parkerte saker.
3. Finn kandidater for duplisering: gjentatte steg, samme fakta i flere filer, gamle pekerbaner, overlappende README-/guide-/INSTALL-tekst eller flere filer som prøver å eie samme forklaring.
4. Klassifiser hver kandidat som én av disse:
   - legitim navigasjonsduplisering
   - legitim lokal kontekst eller lokal forutsetning
   - uønsket semantisk duplisering
5. Finn kanonisk eierfil for hver uønsket kandidat. Bruk gjeldende lagregel og faktaeierskap i `styringsgrunnlag/designvalg.md`, særlig `DV-KIITOS-08` og `DV-KIITOS-09`.
6. Gjør bare én liten ryddepuls om gangen. Kort ned ikke-eierfiler til kort lokal kontekst og tydelig peker til eierfila i stedet for å omskrive store flater i én omgang.
7. Valider umiddelbart etter hver ryddepuls med målrettet søk på den konkrete frasen eller informasjonsklyngen som ble ryddet.
8. Hvis gjennomgangen avdekker et nytt stabilt faktaeierskap eller en ny varig DRY-regel, registrer det fortløpende i riktig styringsfil på laveste riktige nivå.
9. Hvis det står igjen flere klynger etter én ryddepuls, oppsummer kort hva som gjenstår og fortsett bare hvis det fortsatt er innenfor aktiv sak. Ellers parker resten i `oppgaver/`.

## Modus: Full integritetssjekk

Aktiveres med `/maskin integritetsjustere-kiitos` (uten argument).

Full modus utvider DRY-sweepen til alle fire kontrollakser.

1. Les `guide/instruksintegritet.md` først.
2. Avgrens standard sweep til hele aktive kiitos-installasjonen, inkludert prosjektlokale `.kiitos/`-flater.
3. Utelat som standard `journal/`, prosjektets `.kiitos/journal/`, `oppgaver/`, `oppgaver.mine/`, `analyse/` og andre historiske eller parkerte flater.
4. Finn avvik per kontrollakse: `konsistens`, `lagvis DRY`, `korrekthet`, `rask oppslagsbarhet`, `skill-anatomi` og `intralenking`.
5. Klassifiser hvert avvik som `trygg småretting`, `styringsløft`, `parkering` eller `manuell konflikt` før du retter noe.
6. Utfør bare små, reversible rettinger med tydelig eierfil og lav konflikt.
7. Valider direkte etter hver ryddepuls med målrettet søk eller editor-diagnostikk.
8. Hvis gjennomgangen avdekker en ny stabil regel, løft den til riktig styringsfil på laveste riktige nivå i stedet for å la skill-wrapperen eie regelen.
9. Journalfør på riktig nivå når runden faktisk endrer delt kiitos-sannhet.

## Avklaringsspørsmål

Still kort avklaringsspørsmål hvis ett av disse punktene er uklart:

- Hvilket lag eller prosjektsnitt som er aktivt arbeidsområde
- Om maskinen bare skal identifisere avvik, eller også rette i samme runde
- Om bruker vil overstyre standardutelatelsene for denne ene sweepen
- Om sweepen skal være DRY-smal eller full integritet

## Begrensninger

Maskinen skal ikke:

- omskrive journalhistorikk bare for å få nyere formuleringer bakover i tid
- gjette mellom divergerende lokale sannheter
- fjerne nødvendig lokal kontekst fra installasjonsfiler, sikkerhetsflater eller prosjektlokale innganger
- flytte ansvar mellom lag uten å gjøre faktaeierskapet eksplisitt
- starte bred flerlagssats når én liten ryddepuls kan avklare retningen
- la `SKILL.md` bli eier av regler som hører hjemme i guider eller styringsfiler

## Anti-rasjonalisering

| Fristelse | Hvorfor den er feil |
|---|---|
| «Jeg kan bare rette alle småtingene jeg ser.» | Integritetssjekken skal gjøre én liten ryddepuls om gangen, ellers blir eierlinjer og validering uklare. |
| «Wrapperen beskriver nok; jeg trenger ikke lese guiden.» | `guide/instruksintegritet.md` eier kontrollreglene. Wrapperen er bare aktivering og lokale moduser. |
| «Manglende skill-seksjoner kan fikses mekanisk overalt.» | Skill-anatomi skal migreres når skills endres vesentlig, ikke ved blind masseomskriving. |

## Røde flagg

- KI begynner å endre journal, oppgaver eller historiske flater uten eksplisitt brukerønske.
- KI retter bredt i flere lag uten å klassifisere avvik først.
- KI lar en wrapper overta regler som bør ligge i guide, styringsgrunnlag eller `kjerne.md`.
- KI avslutter uten målrettet validering av endringen som faktisk ble gjort.

## Verifikasjon

- [ ] `guide/instruksintegritet.md` er brukt som kanonisk regelgrunnlag.
- [ ] Hvert rettet avvik er klassifisert som `trygg småretting`, `styringsløft`, `parkering` eller `manuell konflikt` før retting.
- [ ] Hver ryddepuls er validert med målrettet søk, editor-diagnostikk eller relevant kommando.
- [ ] Hvis skill-filer ble endret, er `node scripts/valider-skills.js` kjørt eller bevisst utsatt med begrunnelse.

## Kanoniske referanser

- `guide/instruksintegritet.md`
- `guide/skill-anatomi.md`
- `styringsgrunnlag/designvalg.md`
- `velkommen.md`