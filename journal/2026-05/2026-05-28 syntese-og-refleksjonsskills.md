# Syntese- og refleksjonsskills for kiitos

Dato: 2026-05-28


## KI-instruks 1

> Sjekk ut https://x.com/cyrilXBT/status/2059817560988676179?s=20 Er det noe av verdi for oss som bruker kiitos?


### KI-svar 1

Artikkelen beskriver Andrej Karpathys «Second Brain»-rammeverk — en Obsidian-basert kunnskapsbase koblet til Claude via MCP, med fire lag: fangst, kobling, syntese og intelligens.

**Allerede dekket av kiitos:** kontekstoppbygging (deteksjonspipeline), lagdelt struktur (fyr/laug/ruff), kunnskapsfangst (append-only journal), reviderbarhetssti, oppgaveparking, begrepsforvaltning og spesialiserte arbeidsflyter (skills/agenter).

**Tre ideer med verdi for kiitos:**

1. **Forbindelsesfinner** — ukentlig søk etter ikke-åpenbare koblinger mellom nylige og eldre notater. Kiitos har agent005 for kodeharmonisering, men ikke for ideer og innsikter.

2. **Motsigelsesfinner** — månedlig sjekk av motstridende posisjoner i styringsgrunnlag. Kiitos har instruksintegritet for teknisk konsistens, men ikke for innholdsmessig konsistens.

3. **Innsiktsløfter** — bearbeidingsmaskin som skiller «hva som skjedde» fra «hva du mener om det» og foreslår løft til styringsgrunnlag. Kiitos mangler eksplisitt mekanisme for dette.


## KI-instruks 2

> Ja, lag en slik plan, og forklar det enkelt til meg hva vi oppnår.


### KI-svar 2

Plan utarbeidet med tre faser: forbindelsesfinner (ukentlig), motsigelsesfinner (månedlig) og innsiktsløfter (ved behov). Alle som standalone fyr-skills. Fase 3 valgfri. Bruker eksisterende kiitos-flater uten ny mappestruktur.


## KI-instruks 3

> Ok, start til fullføring, journalfør og commit.


### KI-svar 3

Tre nye skills opprettet i `kiitos.fyr/.github/skills/`:

**Nye filer:**
- `.github/skills/forbindelsesfinner/SKILL.md` — ukentlig kobling av ideer på tvers av journal, styringsgrunnlag og oppgaver. Produserer 5–7 ikke-trivielle koblinger med forklaring og handlingsforslag.
- `.github/skills/motsigelsesfinner/SKILL.md` — månedlig koherenssjekk av styringsgrunnlag. Siterer faktisk tekst fra motstridende posisjoner og ber om avklaring.
- `.github/skills/innsiktslofter/SKILL.md` — bearbeider journalinnlegg til egne innsikter og foreslår løft. Skiller «hva kilden sa» fra «hva brukeren mener». Aldri endrer uten godkjenning.

**Designvalg:**
- Alle på fyr-nivå (universelle, ikke th-spesifikke)
- Standalone-format (som `fortsett` og `utforsk`)
- Respekterer append-only-prinsippet og plasseringsreglene
- Ingen ny mappestruktur — bruker eksisterende kiitos-flater

**Inspirasjon:** Karpathys Second Brain-rammeverk (CyrilXBT, X, 2026-05-28), tilpasset kiitos' eksisterende arkitektur.


## KI-instruks 4

> Spor bruken av disse, så du kan hjelpe meg å huske når jeg må kjøre neste


### KI-svar 4

Sporingsinformasjon lagret i KI-minne og i kiitos-journal.

**Kjøringsplan:**

| Skill | Rytme | Første kjøring | Status |
|---|---|---|---|
| Forbindelsesfinner | Ukentlig | 2026-06-04 | Venter |
| Motsigelsesfinner | Månedlig | 2026-06-28 | Venter |
| Innsiktsløfter | Ved behov | — | Tilgjengelig |


## KI-instruks 5

> Lagre dette også via kiitos


### KI-svar 5

Kjøringsplan lagt inn i journalen over (KI-instruks 4) som varig kiitos-referanse. KI-minne oppdatert i parallell for aktiv påminnelse.


## KI-instruks 6

> Kan du også initialisere opplegget når noen kjører kiitos installasjonen? Det kan jo også være nyttig å kjøre den etter en reinstallasjon.


### KI-svar 6

Nytt steg 6 lagt til i deteksjonslogikken i `velkommen.md`: «Initialiser sporing av periodiske skills». Eksisterende steg 6 (varsle om endrede regler) ble steg 7.

Steget sjekker om KI-minne for refleksjonsskills finnes. Hvis ikke, gjenskaper det sporinga fra den nyeste journalposten som inneholder en kjøringsplan. Hvis ingen journal finnes, bruker det standardverdier.

Dette betyr at etter en reinstallasjon av VS Code trenger brukeren bare å åpne arbeidsrommet og starte en samtale — deteksjonspipelinen gjenskaper sporinga automatisk.

**Endret fil:**
- `velkommen.md` — nytt steg 6 i deteksjonslogikk, gammelt steg 6 → steg 7
