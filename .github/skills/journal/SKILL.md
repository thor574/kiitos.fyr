---
name: journal
description: "Brukes ved avslutning av økt (eller når bruker sier 'Avslutt') for å journalføre komplett dialoghistorikk på riktig nivå (univers, arbeidsrom eller prosjekt) og rydde bort løste oppgavefiler."
---

# Journalføring

Denne maskinen er en **aktiveringswrapper**.

Når bruker skriver `/maskin journal` eller sier `Avslutt`, **still disse spørsmålene FØRST** – før du skriver noe til journalfilen:

## Forberedende spørsmål (still alltid)

Før spørsmål 6 skal KI gjøre et kort oppslag i relevante oppgavefiler, slik at brukeren får konkrete kandidater når det er mulig.

1. **Tema** – Foreslå et kort temaord/tema-streng for filnavnet basert på samtalen. Stemmer det?
2. **Dekning** – Skal journalen dekke hele samtalen, eller bare utvalgte deler?
3. **Presiseringer** – Er det noe KI har gjort eller beskrevet feil som skal korrigeres?
4. **Fremhevinger** – Er det beslutninger eller lærdommer som skal løftes frem spesielt?
5. **Parkering** – Er det noe som dukket opp i samtalen som skal parkeres i `oppgaver/`?
6. **Løste oppgaver** – Er noen eksisterende oppgavefiler nå løst og skal slettes? Hvis det finnes nærliggende kandidater, foreslå dem konkret. Hvis ingen peker seg ut, si det eksplisitt.

Vent på svar fra bruker. Journalfør først etter at spørsmålene er besvart (eventuelt med «hopp over» som svar).

Når journalen er skrevet og samtalen faktisk avsluttes, gjør deretter avslutningsopprydding:

1. Slett oppgavefiler som bruker har bekreftet som løst i samtalen.
2. Hvis det er tvil om noe skal beholdes, spør kort før sletting.
3. Hvis aktivt arbeidsrom eksplisitt har erklært automatisk git-commit etter journalføring, identifiser eierrepoet fra lokal `installasjon.md` eller tilsvarende operativ eierfil og kjør `git add -A` og `git commit` med kort, egnet beskrivelse etter at journal og bekreftet opprydding er fullført.
4. Hvis eierrepoet mangler, arbeidskopien er uendret eller commit stopper på en konkret blokkering, si kort hva som stoppet i stedet for å late som commit ble gjort.

---

Bruk kanonisk format og regler i:

- `guide/journal-system.md`

Velg journalnivå ut fra den operative journalguiden:

- `journal/` for universsaker som gjelder den delbare kiitos-kjernen eller annen tverrarbeidsromlig styring
- `journal/` for tverrgående kiitos-saker i arbeidsrommet
- prosjektets lokale `.kiitos/journal/` for lokale prosjektsaker

Maskinen skal særlig håndheve:

- Nummererte overskrifter på formen `# KI-instruks N`
- Ordrett brukerinstruks i blockquote (`>`)
- Ingen parafrasering av brukerinstruks i blockquote (tekst skal stå som skrevet)
- Tre tomme linjer mellom dialogledd
- Append-only journalføring: nye KI-instruks-ledd legges alltid nederst i filen
- Ved manglende eller sent oppdagede instrukser: etterfør nederst med kort notat om etterføring i stedet for å sette dem inn midt i filen
- Ved oppslag i store transcriptfiler fra `workspaceStorage`: les omtrent 30 linjer av gangen, ikke store blokker, når målet er å hente ordrett dialog til journalen
- Ved `Avslutt`: journalfør først, slett deretter oppgavefiler som bruker har bekreftet som løst
- Ved løste oppgaver: slett tilhørende oppgavefiler når løsningen er journalført og bruker bekrefter at de ikke lenger trengs
- Når bruker er usikker på løste oppgaver, skal KI foreslå sannsynlige kandidater før endelig valg tas
- Ved arbeidsrom med eksplisitt auto-commit-regel: faktisk `git add -A` og `git commit` i riktig repo etter journalføring og bekreftet opprydding
- Detaljert struktur ved komplekse oppgaver (Problem, Analyse, Endringer Utført, Status, Referanser, Notater)
- KI-avklaringsspørsmål som påvirker neste instruks skal føres under KI-svaret i `## KI-avklaringsspørsmål`

Hvis det oppstår konflikt mellom denne filen og den operative journalguiden i arbeidsrommet, er `guide/journal-system.md` førende.
