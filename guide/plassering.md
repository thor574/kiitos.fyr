# Plassering — hvor hører innholdet hjemme?

Kanonisk eier for all plasseringslogikk i kiitos. Alle andre filer skal peke hit i stedet for å gjenta reglene.

## Fyret

«Fyret» betyr den workspace-roten som inneholder det universelle kiitos-rammeverket — uavhengig av fysisk plassering eller mappenavn. KI finner den via deteksjonslogikken i `velkommen.md`. I dette arbeidsrommet er det mappen som inneholder denne filen.

## Beslutningsregel

Når KI skal opprette eller oppdatere en fil, avgjør riktig lag slik:

1. **Inneholder det personopplysninger, privat dialog, konto-/tilgangsdetaljer eller vurderinger av personer og arbeidsrelasjoner?** → Privat (ruff eller git-ignorert lokal fil), eller saniter innholdet før deling.
2. **Er det prosjektnært (én kodebase, étt system)?** → Prosjekt (`.kiitos/`).
3. **Er det laugspesifikt (gjelder dette laget/teamet)?** → Laug.
4. **Gjelder det på tvers av alle laug?** → Fyr (universelt).

Ved tvil: velg laveste riktige lag. Løft oppover bare når innholdet er stabilt og faktisk gjenbrukes.

## Innholdstyper og plassering

| Innholdstype | Lag | Plassering |
|---|---|---|
| Universelle KI-instrukser og arbeidsmåter | Fyr | `kiitos.fyr/guide/` |
| Universelle evalueringsprinsipper og standarder | Fyr | `kiitos.fyr/guide/evalueringsrammeverk.md` |
| Universell modell for beslutningstyper og status | Fyr | `kiitos.fyr/guide/beslutninger.md` |
| Prosjektspesifikke evalueringer | Prosjekt | `.kiitos/evaluering/` |
| Evalueringsjournaler | Prosjekt | `.kiitos/journal/evalueringer/` |
| Begreper og navnekonvensjoner | Fyr | `kiitos.fyr/styringsgrunnlag/begrepsmatrise.md` |
| Gjeldende universelle Kiitos-valg | Fyr | Relevant guide eller `kiitos.fyr/styringsgrunnlag/designvalg.md` |
| Skills (delte) | Fyr | `kiitos.fyr/.github/skills/` |
| Laugspesifikke guider | Laug | `<laug>/guide/` |
| Laugspesifikke skills | Laug | `<laug>/.github/skills/` |
| Styringsgrunnlag for lauget | Laug | `<laug>/styringsgrunnlag/` |
| Laugspesifikke beslutninger | Laug | Relevant guide eller fil i `<laug>/styringsgrunnlag/` |
| Parkerte oppgaver og sidefunn | Laug | `<laug>/oppgaver/` |
| Prosjektnær kunnskap og kontrakter | Prosjekt | `.kiitos/prosjektinstruks.md` |
| Prosjektspesifikke beslutninger | Prosjekt | Relevant faglig eierfil under `.kiitos/` |
| Prosjektspesifikke oppgaver | Prosjekt | `.kiitos/oppgaver/` |
| Personlige preferanser (pref-fil) | Ruff / lokal | `kiitos.ruff.*/.github/copilot-kiitos-pref.md` eller git-ignorert i laug |
| Personlig rollebeskrivelse | Ruff / lokal | `kiitos.ruff.*/guide/min-rolle.md` eller `guide/min-rolle-lokalt.md` |
| Brukerprivate oppgaver | Ruff / lokal | `kiitos.ruff.*/oppgaver/` eller `oppgaver.mine/` |
| Personlig kompetanselogg | Ruff / lokal | `kiitos.ruff.*/kompetanse/` eller `kompetanse.min/` |

Beslutningstypen bestemmer ikke laget; virkeområdet gjør det. Typer, statuser og minimumsfelt eies av [beslutninger.md](beslutninger.md). Opprett bare en generell `beslutninger.md` når ingen mer presis faglig eierfil finnes.

## Personvern og arbeidsrelasjoner

Persondetaljer og beskrivelser av arbeidsrelasjoner er private. Regelen gjelder også under intervjuer, gjennomganger og refleksjonssamtaler:

- **Sensitive observasjoner** om enkeltpersoner (atferd, relasjoner, personlige vurderinger) → ruff eller lokal git-ignorert fil. Skal aldri skrives til fyr (offentlig) eller laug (delt).
- **Positive observasjoner om laget som helhet** (rollefunksjoner, rutiner, prosesser) → laug, forutsatt at de ikke identifiserer enkeltpersoner negativt.
- Navn brukes kun som formelle rolleidentifikatorer i delte laugfiler (f.eks. kontaktpunkter i `guide/ansvar.md`), aldri som vurderingsobjekter.

- Personopplysninger lagres bare i privat område (`kiitos.ruff.<bruker>` eller lokale, git-ignorerte filer).
- Samtaler, kontobytter, private tilgangsavtaler og autentiseringsdetaljer skal ikke kopieres til delte flater.
- Offentlig kjente navn og identifikatorer kan brukes som nødvendige fakta, for eksempel eieren av et offentlig repo. Unngå dem når saken kan beskrives uten.
- Når KI oppretter eller oppdaterer filer med personopplysninger, skal den aktivt velge privat plassering og bekrefte overfor brukeren at informasjonen holdes privat.

## Journal-plassering

Journaler er append-only under normalt arbeid, med personvern- og sikkerhetsrettelser som uttrykkelig unntak. Riktig journal avgjøres av både lag og synlighet:

| Innhold | Journal |
|---|---|
| Tverggående kiitos-saker (universelle endringer, kalibrering mellom laug) | Sanitert offentlig saksjournal i `kiitos.fyr/journal/` |
| Laugsaker (guideendringer, oppgavegjennomgang, laugrevisjon) | Målgruppetilpasset saksjournal i `<laug>/journal/` |
| Prosjektsaker (kodeendringer, feilretting, teknisk arbeid) | `.kiitos/journal/` |
| Personlig journal, sensitiv kontekst eller ordrett dialog | `kiitos.ruff.*/journal/` eller lokal git-ignorert journal |

Detaljert journalformat og publiseringskontroll eies av [journal-system.md](journal-system.md).

## Lagregel

- Høyere lag kan peke til lavere lag.
- Lavere lag kan ikke peke tilbake til høyere lag som faktaeier.
- Unntak: korte oppstartspekere kan vise hvor KI finner `kiitos.fyr`, relevant `kiitos.laug.*` og eventuell `kiitos.ruff.*` når samtalen starter i en lavere mappe. Slike pekere dupliserer ikke regler og overtar ikke eierskap.
- Prosjektnivå kan henvise til andre prosjekter i samme arbeidsrom.
- Ved navnekollisjon mellom lag: lavere lag har forrang (lokal vinner over universell).

## Privat vs. delt i ulike arbeidsromtyper

- **Delt laug** (`kiitos.laug.*`): Personlige filer håndteres via `kiitos.ruff.<bruker>` som ekstra workspace-rot, eller via git-ignorerte lokale mapper.
- **Privat laug**: Personlige filer bor direkte i lauget. `kiitos.ruff.*` er ikke nødvendig.
