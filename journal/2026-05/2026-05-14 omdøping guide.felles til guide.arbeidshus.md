# Omdøping av guide.felles til guide.arbeidshus

## Bakgrunn

Arbeidsrom/arbeidshus-distinksjonen var blitt utydelig etter at strukturen ble flatere. Det tverrarbeidsromlige guidelaget het `guide.felles` i hkdir og `guide.allmenn` i th — begge navnene var vage og kommuniserte ikke tydelig at innholdet gjelder på tvers av arbeidsrom. Etter diskusjon ble `guide.arbeidshus` valgt som nytt felles navn, som tydelig binder seg til arbeidshus-konseptet.

## Utførte endringer

### Fysisk omdøping
- `kiitos.hkdir/kiitos.kanalregistrene/guide.felles/` → `guide.arbeidshus/`

### Søk-og-erstatt i aktive filer
Alle aktive filer med `guide.felles`-referanser ble oppdatert til `guide.arbeidshus` (34 filer):
- Hkdir-rot README.md
- Dispatcher (`.github/copilot-instructions.md`)
- Pref-mal og lokal pref
- Arbeidsbenk
- Claude-agenter
- Selvhenvisninger i guide.arbeidshus/ (4 filer inkl. installasjon.md)
- Arbeidsromsguider (guide/kiitos.md)
- Styringsgrunnlag (designvalg.md, arkitekturvalg.md)
- 11 skill-filer
- Oppgavefiler (ki-1, ki-8, ki-11, ki-12, ki-13)
- Oppia-filer i min-kompetanse/
- journal.arbeidshus/README.md

Kryssreferanser til `guide.allmenn` (2 filer) ble også oppdatert til `guide.arbeidshus`.

### Konseptdokumentasjon
- Lagt til «Arbeidsrom og arbeidshus»-avsnitt i dispatcheren med tydelig definisjon

## Bevisst ikke oppdatert
- Journalfiler i `journal/2026-05/` — historikk endres ikke
