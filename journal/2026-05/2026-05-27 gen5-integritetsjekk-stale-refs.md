# Gen5 integritetsjekk — stale referanser etter omdøping

Dato: 2026-05-27


## KI-instruks 1

> Gen5 init: Sjekk integriteten i kiitos. Har vi landet ordentlig etter omdøping av mapper til fyr, laug og ruff?


### KI-svar 1

Systematisk gjennomgang av alle operative filer i `kiitos.fyr`, `kiitos.laug.kanalregistrene` og `kiitos.ruff.th`. Overordnet status: godt landet, men noen etterslep.

**Funn i operative filer (fikset):**

Runde 1 — stale `kiitos/`-prefiks og gammel navngivning:
- `kiitos.fyr/guide/kiitos.md` L27, 30, 36: `kiitos/` → `kiitos.fyr/`
- `kiitos.fyr/styringsgrunnlag/designvalg.md` DV-KIITOS-07: `kiitos/` → `kiitos.fyr/`
- `kiitos.fyr/gen5-plan.md` L156: avgrensning oppdatert til endelig navn `kiitos.fyr`
- `kiitos.fyr/maler/felles/arbeidsrom.code-workspace - mal`: `"name": "kiitos"` → `"name": "kiitos.fyr"`
- `kiitos.laug.kanalregistrene/oppgaver/ki-10`: oppdatert referanser fra `kiitos.hkdir`/`kiitos.kanalregistrene` til gen5-stier

Runde 2 — skills og pref-fil:
- `kiitos.fyr/.github/skills/guidet-tur/SKILL.md` L66, 139: `kiitos/maler/` og `kiitos/.github/` → `kiitos.fyr/…`
- `kiitos.ruff.th/.github/copilot-kiitos-pref.md` L16: `kiitos/guide/` → `kiitos.fyr/guide/`
- `kiitos.fyr/styringsgrunnlag/designvalg.md` DV-KIITOS-06: `kiitos` → `kiitos.fyr`


## KI-instruks 2

> Kanskje verdt å bytte ut alle forekomster av "`kiitos.fyr` → `" med "kiitos.fyr/" ? Sjekk og gjør det som er korrekt å gjøre.


### KI-svar 2

Fant 9 forekomster av navigasjonspil-mønsteret `kiitos.fyr` → `path` i 6 filer. Erstattet alle med direkte sti `kiitos.fyr/path`:
- `kiitos.fyr/styringsgrunnlag/designvalg.md` DV-KIITOS-06
- `kiitos.laug.kanalregistrene/velkommen.md` (2 steder)
- `kiitos.laug.kanalregistrene/LESMEG.md` (2 steder)
- `kiitos.laug.kanalregistrene/styringsgrunnlag/README.md` (2 steder)
- `kiitos.laug.kanalregistrene/guide/kiitos.md`
- `kiitos.laug.kanalregistrene/guide/kiitos-på-en-side.md`


## KI-instruks 3

> Sjekk forekomster av "workspace-roten" om vi bør rydde opp der, for enklere begrepsbruk


### KI-svar 3

Fjernet overflødig «workspace-roten» i 3 operative laugfiler der `kiitos.fyr` er selvforklarende:
- `kiitos.laug.kanalregistrene/guide/kiitos.md`
- `kiitos.laug.kanalregistrene/velkommen.md`
- `kiitos.laug.kanalregistrene/AGENTS.md`

Beholdt korrekt bruk i:
- `kiitos.fyr/velkommen.md` (deteksjonslogikk — teknisk korrekt VS Code-terminologi)
- `kiitos.fyr/guide/plassering.md` (definisjon av «fyret»)


## Verifisert rent

- Workspace-fil (`kanalregistrene.code-workspace`): korrekt
- `velkommen.md` i alle tre røtter: konsistent
- `AGENTS.md` i fyr og laug: korrekt
- `.github/copilot-instructions.md` i alle tre røtter: peker til `velkommen.md`
- Prosjektinstrukser (`.kiitos/prosjektinstruks.md`): 8 prosjekter, ingen stale refs
- Journal og gen5-plan: historiske referanser beholdt
