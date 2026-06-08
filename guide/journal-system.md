# Journal-system for univers, arbeidsrom og prosjekt

Denne guiden beskriver hvordan saker journalføres på riktig nivå i kiitos-modellen.

## Struktur

Universsaker journalføres i:

```text
journal/
    └── åååå-mm/
        └── åååå-mm-dd tema.md
```

Tverrgående kiitos-saker for arbeidsrommet journalføres i:

```text
journal/
    └── åååå-mm/
        └── åååå-mm-dd tema.md
```

## Oppsett av ny journalflate

1. Opprett strukturen over.
2. Beskriv i rotens `copilot-instructions.md` hva arbeidsrommet handler om, hvilke mapper som er viktige, hva KI ikke skal røre uten beskjed, og at KI skal dokumentere all relevant dialog automatisk i journal.
3. Pek til prosjektspesifikke instrukser når flere prosjekter deler samme arbeidsrom.
4. Se arbeidsromnivåets operative inngang i `velkommen.md`.

## Journal-format

KI dokumenterer automatisk all dialog på riktig nivå:

- universsaker i `journal/åååå-mm/åååå-mm-dd tema.md`
- tverrgående kiitos-saker i `journal/åååå-mm/åååå-mm-dd tema.md`
- prosjektsaker i prosjektets lokale `.kiitos/journal/åååå-mm/åååå-mm-dd tema.md` når prosjektet er migrert

### Felles grunnformat (alltid)

Bruk dette i alle journaler:

```markdown
# KI-instruks 1
> [Din instruks, ordrett]

[KI sitt svar i vanlig tekst]



# KI-instruks 2
> [Neste instruks, ordrett]

[KI sitt svar i vanlig tekst]
```

Regler:

- Overskrift skal være `# KI-instruks N`
- Brukerinstruks skal stå ordrett i blockquote (`>`)
- Brukerinstruks skal ikke parafraseres, forkortes eller normaliseres; behold tegnsetting, mellomrom og ordvalg slik de ble skrevet
- Journalen skal ha fullstendig oversikt over alle brukerinstrukser i samme sak, i kronologisk rekkefølge
- KI-svar skal stå i vanlig tekst, ikke i blockquote
- Det skal være tre tomme linjer mellom dialogledd
- Nye dialogledd skal alltid legges nederst i journalfilen
- Journalfiler behandles som append-only under normalt arbeid
- Ved redigering med patch: finn siste `# KI-instruks` i filen og sett inn ny seksjon etter siste eksisterende seksjon
- Problemseksjoner i KI-svar skal bruke nivå 2 med beskrivende tittel: `## Problem: [kort beskrivende tittel]`
- Ved enkle svar kan `### Status` utelates; status kan da skrives som vanlig avsnitt i KI-svaret
- Når KI stiller avklaringsspørsmål som påvirker senere brukerinstruks, skal spørsmålet tas med under KI-svaret
- Ved flytting eller sletting av journaler eller annet historisk innhold skal målfilene først verifiseres på målplassen før kilden slettes
- Unngå wildcard-baserte `Move-Item`-mønstre i PowerShell når historisk innhold flyttes; bruk eksplisitte mål og verifiser resultatet først
- Hvis det oppdages manglende instrukser i ettertid, skal de etterføres ordrett nederst i filen som et nytt `# KI-instruks N`-ledd med kort notat om at leddet er etterført
- Ikke sett inn nye KI-instrukser midt i en eksisterende journalfil med mindre bruker eksplisitt ber om rekonstruksjon eller opprydding av hele filen
- Hvis ordrett tekst ikke er tilgjengelig i kontekstvinduet, skal journalen eksplisitt merke dette og be om bekreftelse før rekonstruksjon
- Hvis journalføring trenger oppslag i store transcriptfiler, spesielt under `workspaceStorage/.../transcripts/*.jsonl`, skal filen leses i små biter på omtrent 30 linjer av gangen i stedet for store blokker
- Ved journalføring av feil der stacktrace er relevant, skal stacktracen forkortes til én linje i formatet `[stacktrace: <mest signifikante melding>]`
- I feilrettingssamtaler skal KI be om saksnummer før journalføring hvis brukeren ikke allerede har oppgitt det
- Standardregelen er at KI etter journalføring skal gi et kort commit-forslag når brukeren ikke har bedt om noe annet. Standardformatet er `fix(<område>) <prosjektkode><saksnr> <beskrivelse>`, der område, prosjektkode og saksnummer byttes ut med arbeidsrommets konvensjoner, og beskrivelse er en svært kort oppsummering.
- Hvis et arbeidsrom eksplisitt har erklært automatisk git-commit etter journalføring i sin lokale `installasjon.md` eller tilsvarende operative eierfil, skal KI etter ferdig journal og eventuell bekreftet opprydding kjøre `git add -A` og en vanlig `git commit` i repoen som arbeidsrommet har pekt ut. Commitmeldingen skal være kort og passe til hovedutfallet i saken. Hvis arbeidsrommet ikke har oppgitt en mer spesifikk stil, bruk `journal(<område>): <kort beskrivelse>`.

### Enkel dialog

For korte spørsmål holder grunnformatet over.

### Kompleks dialog

For komplekse oppgaver med kodeendringer, behold grunnformatet og legg til struktur i KI-svaret:

```markdown
# KI-instruks 7
> [Din instruks, ordrett]

## Problem: [kort beskrivende tittel]
[Hva skulle løses?]

### Symptomer / Årsak / Løsningsstrategi
[Analyse av problemet]

### Endringer Utført
- [velkommen.md](../velkommen.md) - Endring beskrivelse
- [journal-system.md](journal-system.md) - Endring beskrivelse

### Status
✅ Fullført / 🔄 Pågående / ⏸️ Blokkert

### Referanser
- Lenker til relaterte filer
- Lenker til relaterte journaler

### Notater
[Ekstra kontekst]

## KI-avklaringsspørsmål
[Avklaringsspørsmål]
```

### Nøkkelprinsipper

- Regler er førende: følg punktlisten over fullt ut, ikke lag alternative varianter av formatet.
- Nivåtilpass KI-svar: enkle spørsmål får korte svar, komplekse oppgaver får strukturert oppsummering.
- Automatisk og fortløpende: journalføring skjer uten ekstra beskjed og legges løpende nederst i samme fil.
- Append-only først: hvis kronologi eller nummerering ser skjev ut, legg neste ledd nederst og parker eventuell filopprydding separat.
- Korrekt norsk: behold `æ`, `ø` og `å` i journaltekst, med mindre et konkret teknisk krav tvinger noe annet.
- Evalueringsjournaler skal følge formatet definert i `guide/evalueringsrammeverk.md` og lagres i `journal/evalueringer/`

## Avslutningsopprydding

Når en samtale både journalføres og avsluttes:

1. Skriv journalen ferdig først.
2. Slett oppgavefiler som ble løst i samtalen og ikke lenger representerer arbeid som gjenstår.

Behold eller la være å slette filer bare når bruker eksplisitt ber om det, eller når det er tvil om filen fortsatt har en aktiv rolle.

## Kandidatforslag ved journalføring

- Før spørsmål om løste oppgavefiler skal KI sjekke relevante oppgavefiler og foreslå kandidater, eller si eksplisitt at ingen peker seg ut.
- Brukeren avgjør fortsatt hva som skal slettes eller beholdes, men KI skal ikke overlate filidentifisering helt til brukeren når arbeidsrommet allerede gir tydelige spor.

## Tips for oppstart

### Lokalt først

Ved etablering av nye prosjektjournaler kan teamet starte lokalt:

- Lokal mappe utenfor repo hvis journalen ikke skal deles ennå
- Eller lokal `.kiitos/journal/` som ignoreres i Git til rutinene sitter

### Senere: Delt journal

Når format og bruk sitter, kan journalen deles:

- i prosjektets lokale `.kiitos/journal/`
- eller i `journal/` for tverrgående saker

## Klart språk i kode og dokumentasjon

- Brukervennlige tekster: skriv enkelt og forståelig.
- Aktiv form: "Systemet lagrer data" i stedet for "Data blir lagret".
- Kort og konsist: fjern unødvendige ord.
- Konkret språk: vær spesifikk og unngå vage formuleringer.
- Konsistent terminologi: bruk samme begreper for samme konsepter.
- Referanse: se klarspråk.no for veiledning.

## Nivåregel

- Universsaker som endrer den delbare kiitos-kjernen, tverrarbeidsromlige arbeidsmåter eller annen styring som skal kunne gjenbrukes på tvers av arbeidsrom, hører hjemme i `journal/`.
- Tverrgående kiitos-saker med konsekvens på tvers av flere prosjekter i denne benken, eller som endrer selve arbeidsromsopplegget, `guide/`, `guide/` eller annen delt arbeidsmåte i denne benken, hører hjemme i `journal/`.
- Lokale prosjektsaker skal journalføres i prosjektets egen journal når prosjektet er migrert.
- Samme endring skal ikke journalføres i fulltekst på flere nivåer.

## Fordeler

- Teamet kan lese hva KI har gjort.
- Historikken over beslutninger og løsninger bevares.
- Arbeid er lett å gjenoppta senere.
- Påmønstring av nye teammedlemmer blir enklere.
- Læring deles automatisk mellom teammedlemmer.