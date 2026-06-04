# Kiitos

Kiitos er et universelt KI-instruksrammeverk. Det gir struktur, konvensjoner og gjenbrukbare instrukser som lar utviklere jobbe bedre med KI-assistenter — alene og i lag.

Start i [LESMEG.md](LESMEG.md) hvis du vil ha en menneskevendt inngang. Den peker blant annet til en kort [virksomhetsintro](guide/virksomhetsintro/README.md) for alle, uansett bakgrunn.

## Hva kiitos gjør

- **Konsistente KI-instrukser** på tvers av prosjekter og laug
- **Lagdelt modell** som skiller universelt, laugdelt, personlig og prosjektspesifikt
- **Progressiv onboarding** — nyttig fra dag 1, uendelig tilpasningsbart
- **Hybrid skills** — base-maskiner som kan overstyres per laug
- **Støtte for Copilot, Claude Code og Codex** via standard inngangsfiler

## Lagmodell

```
Lag 1: kiitos.fyr              ← dette repoet (universelt, delt)
Lag 2: kiitos.laug.<navn>      ← laug for et lag (delt repo)
Lag 3: kiitos.ruff.<bruker>    ← personlig ruff (privat, valgfritt)
Lag 4: prosjekt               ← .kiitos/ i hvert prosjekt
```

Private laug trenger bare lag 1 + sitt eget repo. Personlig ruff (lag 3) er valgfritt og trengs bare for brukere som jobber i flere delte laug.

### Tilgjengelige laug

| Laug | Beskrivelse | Repo |
|---|---|---|
| **kiitos.laug.kanalregistrene** | Laug for Kanalregistrene | [HKDIR-DBH/kiitos.laug.kanalregistrene](https://github.com/HKDIR-DBH/kiitos.laug.kanalregistrene) |

Installerer du kiitos for bruk i Kanalregistrene, klon laugrepoet i tillegg til fyret og følg instruksene der.

Alternativt kan du lage ditt eget private laug ved å opprette en mappe med navn `kiitos.laug.<x>`, der `<x>` er dine initialer, fornavn eller et valgfritt navn.

## Rask installasjon

1. **Klon dette repoet** til en lokal mappe
2. **Åpne laugets** `.code-workspace`-fil (eller lag et nytt laug)
3. **Legg til kiitos-mappen** via *File → Add Folder to Workspace*
4. **Start en Copilot-samtale** — kiitos detekterer situasjonen og guider deg videre

Se [guide/installasjon.md](guide/installasjon.md) for detaljert veiledning og tre kompetansenivåer.

## Mappestruktur

```
kiitos/
  velkommen.md              ← universell inngang (KI leser denne først)
  guide/                    ← universelle guider og arbeidsmåter
  styringsgrunnlag/         ← begrepsmatrise, visjoner, styring
  journal/                  ← universell journal
  .github/skills/           ← base-skills (maskiner)
  .claude/agents/           ← universelle Claude-agenter
  .github/copilot-instructions.md  ← inngang for Copilot
  AGENTS.md                 ← inngang for Claude Code
```

## Språk

Kiitos er primært på norsk (bokmål). Instrukser, guider og dokumentasjon er skrevet på norsk.

## Credits

Se [CREDITS.md](CREDITS.md) for opphav, eksterne inspirasjonskilder og kreditering av innhentede skills.

## Lisens

*(Lisens fastsettes ved publisering)*
