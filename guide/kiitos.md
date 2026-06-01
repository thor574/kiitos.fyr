# Kiitos — universell introduksjon

Kiitos er et universelt KI-instruksrammeverk for VS Code. Det gir struktur, konvensjoner og gjenbrukbare instrukser som lar utviklere jobbe bedre med KI-assistenter — alene og i lag.

## Lagmodell

Kiitos har fire lag og to dimensjoner:

**Lag:** fyr → laug → ruff → prosjekt

| Lag | Hva | Prefiks/mapper |
|---|---|---|
| **Fyr** (dette repoet) | Universelt, delt på tvers av alle laug | `kiitos.fyr/guide/`, `kiitos.fyr/styringsgrunnlag/`, `kiitos.fyr/journal/` |
| **Laug** | Lagspesifikt eller privat laug | `kiitos.laug.<navn>/` eller privat repo |
| **Ruff** (valgfritt) | Personlige preferanser, oppgaver, kompetanse | `kiitos.ruff.<bruker>/` |
| **Prosjekt** | Eitt prosjekt med lokal instruks | `.kiitos/` i prosjektmappen |

**Dimensjoner:** lag × eierskap (personlig / delt)

- I **delte laug** (`kiitos.laug.*`): Personlige filer håndteres via `kiitos.ruff.<bruker>` som ekstra workspace-rot, eller via git-ignorerte lokale mapper.
- I **private laug**: Personlige filer bor direkte i lauget. `kiitos.ruff.*` er ikke nødvendig.

Begreper og navnekonvensjoner eies av `styringsgrunnlag/begrepsmatrise.md` i kiitos-roten.

## Leserekkefølge

1. `kiitos.fyr/velkommen.md` (universell inngang, deteksjonslogikk)
2. Laugets `velkommen.md` (laugspesifikk orientering)
3. `kiitos.ruff.*`s `velkommen.md` (personlige preferanser, hvis den finnes)
4. Denne filen og relevante guider i `kiitos.fyr/guide/` etter modulvalg
5. Laugets `guide/kiitos.md` for prosjektkart
6. Prosjektets `.kiitos/prosjektinstruks.md` når den finnes

## Privat innstillingslag

- Pref-fila styrer påmønstringsmodus (`stille`, `utforskende`, `standard`) og modulvalg for `kiitos.fyr/guide/`.
- `copilot-pref.md` kan eksistere ved siden av som valgfri lokal Copilot-pref utenfor kiitos-modellen.
- Pref-malen er innsjekket i kiitos: `.github/copilot-kiitos-pref-mal.md`.
- Pref-fila opprettes ved behov:
  - I delt laug med ruff: `kiitos.ruff.<bruker>/.github/copilot-kiitos-pref.md`
  - I delt laug uten ruff: laugets `.github/copilot-kiitos-pref.md` (git-ignorert)
  - I privat laug: laugets `.github/copilot-kiitos-pref.md`

## Personlige flater

I delte laug (`kiitos.laug.*`) håndteres personlige flater av `kiitos.ruff.<bruker>`:

- `kiitos.ruff.<bruker>/kompetanse/` — læringsflate
- `kiitos.ruff.<bruker>/oppgaver/` — brukerprivate oppgaver
- `kiitos.ruff.<bruker>/guide/min-rolle.md` — personlig rolleflate
- `kiitos.ruff.<bruker>/journal/` — personlig journal

I private laug bor disse direkte i lauget:

- `kompetanse.min/` — lokal, ignorert av Git
- `oppgaver.mine/` — lokal, ignorert av Git
- `guide/min-rolle-lokalt.md` — lokal, ignorert av Git

## Personvern, plassering og lagregel

Plasseringslogikk, personvernregler, journal-plassering og lagregel eies av [plassering.md](plassering.md).

## Viktige begrensninger

- Ikke bryt API/DB-kontrakter uten avklaring.
- Løft stabile ord, visjoner, mål og arkitekturvalg til laveste riktige styringsfil.
- Journalfiler er append-only under normalt arbeid.
- Norske ord beholdes med korrekt rettskrivning — ikke ASCII-normaliser `æ`, `ø` eller `å`.
- Hold deg til aktiv sak. Parker sidefunn i laugets `oppgaver/`.

## Videre

- Plassering og personvern: [plassering.md](plassering.md)
- Søkeregler og arbeidsmønstre: [effektiv-samhandling-med-ki.md](effektiv-samhandling-med-ki.md)
- Instruksintegritet og helsesjekk av aktive flater: [instruksintegritet.md](instruksintegritet.md)
- Oppgaveparkering: [oppgave-parkering.md](oppgave-parkering.md)
- Journalsystem: [journal-system.md](journal-system.md)
- Preferanser: [preferanser.md](preferanser.md)
- Fysisk påmønstring: [installasjon.md](installasjon.md)
