# Plassering — hvor hører innholdet hjemme?

Kanonisk eier for all plasseringslogikk i kiitos. Alle andre filer skal peke hit i stedet for å gjenta reglene.

## Fyret

«Fyret» betyr den workspace-roten som inneholder det universelle kiitos-rammeverket — uavhengig av fysisk plassering eller mappenavn. KI finner den via deteksjonslogikken i `velkommen.md`. I dette arbeidsrommet er det mappen som inneholder denne filen.

## Beslutningsregel

Når KI skal opprette eller oppdatere en fil, avgjør riktig lag slik:

1. **Inneholder det navn, vurderinger av personer eller arbeidsrelasjoner?** → Privat (ruff eller git-ignorert lokal fil).
2. **Er det prosjektnært (én kodebase, étt system)?** → Prosjekt (`.kiitos/`).
3. **Er det laugspesifikt (gjelder dette laget/teamet)?** → Laug.
4. **Gjelder det på tvers av alle laug?** → Fyr (universelt).

Ved tvil: velg laveste riktige lag. Løft oppover bare når innholdet er stabilt og faktisk gjenbrukes.

## Innholdstyper og plassering

| Innholdstype | Lag | Plassering |
|---|---|---|
| Universelle KI-instrukser og arbeidsmåter | Fyr | `kiitos.fyr/guide/` |
| Universelle evalueringsprinsipper og standarder | Fyr | `kiitos.fyr/guide/evalueringsrammeverk.md` |
| Prosjektspesifikke evalueringer | Prosjekt | `.kiitos/evaluering/` |
| Evalueringsjournaler | Prosjekt | `.kiitos/journal/evalueringer/` |
| Begreper og navnekonvensjoner | Fyr | `kiitos.fyr/styringsgrunnlag/begrepsmatrise.md` |
| Designvalg og universelle føringer | Fyr | `kiitos.fyr/styringsgrunnlag/designvalg.md` |
| Skills (delte) | Fyr | `kiitos.fyr/.github/skills/` |
| Laugspesifikke guider | Laug | `<laug>/guide/` |
| Laugspesifikke skills | Laug | `<laug>/.github/skills/` |
| Styringsgrunnlag for lauget | Laug | `<laug>/styringsgrunnlag/` |
| Parkerte oppgaver og sidefunn | Laug | `<laug>/oppgaver/` |
| Prosjektnær kunnskap og kontrakter | Prosjekt | `.kiitos/prosjektinstruks.md` |
| Prosjektspesifikke oppgaver | Prosjekt | `.kiitos/oppgaver/` |
| Personlige preferanser (pref-fil) | Ruff / lokal | `kiitos.ruff.*/.github/copilot-kiitos-pref.md` eller git-ignorert i laug |
| Personlig rollebeskrivelse | Ruff / lokal | `kiitos.ruff.*/guide/min-rolle.md` eller `guide/min-rolle-lokalt.md` |
| Brukerprivate oppgaver | Ruff / lokal | `kiitos.ruff.*/oppgaver/` eller `oppgaver.mine/` |
| Personlig kompetanselogg | Ruff / lokal | `kiitos.ruff.*/kompetanse/` eller `kompetanse.min/` |

## Personvern og arbeidsrelasjoner

Navn, persondetaljer og beskrivelser av arbeidsrelasjoner er alltid private:

- **Lagres kun i privat område** (`kiitos.ruff.<bruker>` eller lokale, git-ignorerte filer).
- Skal **aldri** skrives til delte flater (`kiitos.fyr/`, `kiitos.laug.*`, delte guider eller styringsgrunnlag).
- Når KI oppretter eller oppdaterer filer med personopplysninger, skal den aktivt velge riktig privat plassering og bekrefte overfor brukeren at informasjonen holdes privat.
- Hvis brukeren nevner kolleganavn i en samtale der det ikke finnes privat område, skal KI varsle om at navnene ikke kan lagres varig uten privat flate.

## Journal-plassering

Journaler er append-only under normalt arbeid. Riktig journal avgjøres av innholdets lag:

| Innhold | Journal |
|---|---|
| Tverggående kiitos-saker (universelle endringer, kalibrering mellom laug) | `kiitos.fyr/journal/` |
| Laugsaker (guideendringer, oppgavegjennomgang, laugrevisjon) | `<laug>/journal/` |
| Prosjektsaker (kodeendringer, feilretting, teknisk arbeid) | `.kiitos/journal/` |
| Personlig journal (rollerefeksjon, private notater) | `kiitos.ruff.*/journal/` eller lokal git-ignorert journal |

## Lagregel

- Høyere lag kan peke til lavere lag.
- Lavere lag kan ikke peke tilbake til høyere lag.
- Prosjektnivå kan henvise til andre prosjekter i samme arbeidsrom.
- Ved navnekollisjon mellom lag: lavere lag har forrang (lokal vinner over universell).

## Privat vs. delt i ulike arbeidsromtyper

- **Delt laug** (`kiitos.laug.*`): Personlige filer håndteres via `kiitos.ruff.<bruker>` som ekstra workspace-rot, eller via git-ignorerte lokale mapper.
- **Privat laug**: Personlige filer bor direkte i lauget. `kiitos.ruff.*` er ikke nødvendig.
