# KI-instruks 1
> /maskin kalibrer-kiitos

Kalibrering mellom `kiitos.th/arbeidsrom` (th) og `kiitos.hkdir/kiitos.kanalregistrene` (hkdir).

## Synkede filer

### th → hkdir
- `guide.arbeidshus/termer.md`: Lagt til 3 aksepterte termer som fantes i th men manglet i hkdir: `arbeitsflyter → arbeidsflyter`, `chat-historien → samtale-historien`, `snakk beskjed → gi beskjed / si beskjed`.

### hkdir → th
- `guide.arbeidshus/journal-system.md`: Oppdatert tittel til «Journal-system for arbeidshus, arbeidsrom og prosjekt». Lagt til «Avslutningsopprydding»-seksjon.
- `guide.arbeidshus/oppgave-parkering.md`: Lagt til `oppgaver-lokalt/`-konsept med «Valg av samling»-seksjon.
- `.github/copilot-kiitos-pref-mal.md`: Lagt til Påmønstringsmodus-seksjon, `...OO...` kanarifugl-kandidat, oppdaterte modulvalg-beskrivelser og `/maskin prøv`-peker.
- `.github/skills/fellesregel/SKILL.md`: Lagt til arbeidshusrot som ekstra mållag.
- `.github/skills/journal/SKILL.md`: Lagt til `journal.arbeidshus/` som ekstra journalnivå.
- `.github/skills/oppia/SKILL.md`: Kopiert til th.
- `.github/skills/oppia-innspill/SKILL.md`: Kopiert til th.
- `.github/skills/prov/SKILL.md`: Kopiert til th.

### Begge retninger
- `guide.arbeidshus/journal-system.md`: Generalisert saksnummer-regel og commit-forslag-regel til delbart format i begge.
- `.github/skills/kalibrere-kiitos/SKILL.md`: Omdøpt fra `kalibrer-kiitos` til `kalibrere-kiitos` i th. Innhold harmonisert.

## Hoppet over (ute av scope)
- `.github/copilot-kiitos-pref.md`, `copilot-pref.md`, `arbeidsbenk.md`, `guide/`, `spesifikasjoner/`, `oppgaver/`, `journal/` som bulk-sync, prosjektlokale `.kiitos/`, `installasjon.md` (bare i hkdir).

## Konflikter som gjenstår
1. `ki-verktoy-og-oppsett.md`: Ulik referanse til installasjonsdokument og pakkegruppering. Ikke synket.
2. Dispatcher (`.github/copilot-instructions.md`): hkdir har påmønstringsmodus-logikk som th mangler i sin dispatcher. Ikke synket (workspace-spesifikk).
3. th har `kartlegging`, `penger`, `ukeplan` skills som hkdir mangler. Disse er th-spesifikke og ikke synket.

# KI-instruks 2
> Gjør neste naturlige trinn, 1 og 2 og 3 (kun kartlegging)
> Start implementation

Oppfølging på de gjenstående kalibreringspunktene.

## Utført i th

- `guide.arbeidshus/ki-verktoy-og-oppsett.md`: Harmonisert til hkdir-strukturen for anbefalte og valgfrie verktøy, utvidet verifikasjon, tydeligere avtale for nye verktøy og ny seksjon om kjente KI-verktøyfeller.
- `guide.arbeidshus/ki-verktoy-og-oppsett.md`: Beholdt generisk ekstern referanse til installasjonsdokumentasjon fordi th ikke har lokal `guide.arbeidshus/installasjon.md`.
- `.github/copilot-instructions.md`: Lagt inn påmønstringsmodus-logikk (`stille`, `utforskende`, `standard`), modusspesifikk modulaktivering, presisering om `copilot-pref.md` i `stille` modus, og setning om `prosjektinstruks.md` som samarbeidsorientert instrukssamling.
- `.github/copilot-instructions.md`: Oppdatert verktøyseksjonen til generisk ekstern installasjonsdokumentasjon i stedet for referanse til en ikke-tilstedeværende `INSTALL.md`.

## Kartlegging av punkt 3

- `kartlegging`: Potensielt delbar maskinlogikk, men peker til th-spesifikke guide-filer og ble ikke synket.
- `penger`: th-spesifikk personlig økonomiflyt. Ikke synket.
- `ukeplan`: th-spesifikk ukeplanflyt. Ikke synket.

## Validering

- `ki-verktoy-og-oppsett.md` ble sammenlignet mot hkdir med `git diff --no-index`; gjenværende forskjell er nå bare installasjonsreferansen.
- Editor-diagnostikk for de to endrede filene rapporterte ingen feil.

## Status etter oppfølging

- Tidligere konflikt 1 er redusert til ren forskjell i installasjonsreferanse.
- Tidligere konflikt 2 er lukket.
- Tidligere konflikt 3 er kartlagt, men ikke synket.

# KI-instruks 3
> Lag en grundig installasjonsfil i th arbeidsrommet, bruk hkdir sin som rettesnor

Oppfølging på installasjonsløypa i th.

## Utført i th

- `guide.arbeidshus/installasjon.md`: Opprettet som th-tilpasset installasjonsløype basert på hkdir. Fila beskriver flerrot-oppsettet i `th`, bruk av `th.code-workspace`, forventede søsterprosjekter, lokal workspace-variant og videre påmønstring.
- `guide.arbeidshus/ki-verktoy-og-oppsett.md`: Referansene peker igjen til lokal `installasjon.md` i arbeidshuset.
- `.github/copilot-instructions.md`: Verktøyseksjonen peker igjen til lokal `guide.arbeidshus/installasjon.md`.

## Validering

- Editor-diagnostikk rapporterte ingen feil i den nye installasjonsfila eller de oppdaterte referansefilene.
- Målrettet søk bekreftet at de generiske installasjonsreferansene i th er erstattet med lokale pekerer der det var relevant.

## Status

- Tidligere rest om manglende lokal installasjonsfil i th er lukket.

# KI-instruks 4
> Ja, fortsett

Oppfølging på installasjonsfilene etter at th fikk egen `installasjon.md`.

## Sammenligning og vurdering

- th sin `guide.arbeidshus/installasjon.md` er riktig arbeidsromsspesifikk og beskriver flerrot-oppsettet i `th`.
- hkdir sin `guide.arbeidshus/installasjon.md` er riktig arbeidsromsspesifikk og beskriver Kanalregistrene-oppsettet med k2-relaterte prosjektflater.
- Felles kjerne mellom filene er primært språk om Copilot, VS Code, personlige pref-valg og bruk av `kalibrere-kiitos` når flere arbeidsrom deler innhold.

## Utført i hkdir

- `guide.arbeidshus/installasjon.md`: Harmonisert bare på delbar kjerne. Oppdaterte generelle formuleringer om Enterprise-lisens, VS Code/GitHub Copilot, parallell bruk av IDE, påmønstringsmodus i pref-fila, parkering av sidefunn og ny henvisning til `/maskin kalibrere-kiitos`.
- Workspace-spesifikke steg for `k2`, `k2webapi`, `k2loginapi`, `k2issnapi`, `k2nvaapi`, `k1`, `npi` og `kdb` ble bevisst beholdt uendret.

## Status

- Installasjonsfilene er nå bedre harmonisert på arbeidshus-kjerne, samtidig som de fortsatt er tydelig arbeidsromsspesifikke.

# KI-instruks 5
> ja fortsett

Oppfølging på arbeidsbenkene etter installasjonsfilene.

## Sammenligning og vurdering

- hkdir sin `arbeidsbenk.md` har en rikere delbar kjerne med språk om lagmodell, pref-lag, parkering og journalføring.
- th sin `arbeidsbenk.md` har den riktige workspace-spesifikke navigasjonen for flerrot-oppsettet i `th`, med prosjektkart, gruppe-røtter og migreringsstatus.
- Den trygge harmoniseringen var derfor å løfte inn bare den delbare kjernen i th, uten å endre th sitt prosjektkart eller å trekke inn hkdir-spesifikke prosjektnavn.

## Utført i th

- `arbeidsbenk.md`: Lagt til kort peker til lokal `guide.arbeidshus/installasjon.md`.
- `arbeidsbenk.md`: Lagt til kompakt `Kjerneinstruks` med språk om flerprosjekt-benk, norsk som hovedspråk når det passer, pref-lag, prosjektlokal `.kiitos/`, oppgaveparkering og kontraktsdisiplin.
- `arbeidsbenk.md`: Presisert `oppgaver-lokalt/` i kanonisk struktur og nivåregel.
- `arbeidsbenk.md`: Utvidet avgrensningene med append-only-journal, løfting av stabile valg til laveste riktige styringsfil og presisering av hva `kiitos` betyr i dette arbeidsrommet.

## Validering

- Editor-diagnostikk på `arbeidsbenk.md` rapporterte ingen feil.

## Status

- Arbeidsbenkene er nå bedre harmonisert på delbar kjerne, samtidig som arbeidsromsspesifikk navigasjon fortsatt er separert.

# KI-instruks 6
> ja fortsett

Oppfølging på dispatcher-filene etter arbeidsbenkene.

## Sammenligning og vurdering

- th sin dispatcher er riktig tilpasset flerrot-arbeidsrommet og gruppe-røttene i `th`.
- hkdir sin dispatcher er riktig tilpasset Kanalregistrene-oppsettet og de konkrete prosjektinngangene der.
- Den trygge harmoniseringen var å legge inn litt mer generell prosjekt- og områdenavigasjon i hkdir, uten å endre de k2-spesifikke oppslagene eller prosjekt-`.github`-regelen.

## Utført i hkdir

- `.github/copilot-instructions.md`: Utvidet språk om `prosjekt eller temaområde` og om avklaring av riktig workspace-rot.
- `.github/copilot-instructions.md`: Lagt til regel om at saker som bare gjelder gruppering, navigasjon eller grenseflater mellom flere prosjekter skal bruke relevante filer i arbeidsromsroten i stedet for egen gruppe-`.kiitos/`.
- `.github/copilot-instructions.md`: Presisert at lokal `prosjektinstruks.md` også kan gjelde områder, og at lokale `.kiitos/*`-filer kan være prosjekt- eller områdefiler.

## Validering

- Editor-diagnostikk på `.github/copilot-instructions.md` i hkdir rapporterte ingen feil.

## Status

- Dispatcher-filene er nå bedre harmonisert på delbar navigasjonskjerne, samtidig som arbeidsromsspesifikke prosjektregler fortsatt er separert.

# KI-instruks 7
> ikke grunnig men grundig

Terminologipresisering i aktiv guide.

## Utført i th

- `guide.arbeidshus/effektiv-samhandling-med-ki.md`: Rettet siste aktive forekomst av `grunnig løp` til `grundig løp` i eksempelblokken, slik at signalordet nå er konsekvent i hurtigguiden.

## Validering

- Målrettet søk i den aktive guiden viser nå bare `Grundig løp` og `grundig løp`.
- Editor-diagnostikk rapporterte ingen feil.

# KI-instruks 8
> Ja, gjør det. Fikset du ferdig det med skill-beskrivelser eller arbeidsromsguider?

Terminologiryddejobb i parkerte oppgaver.

## Utført i hkdir

- `oppgaver/ki-12-flytt-parkert-arbeidshusstyring-ut-av-arbeidsrommet.md`: Rettet `grunnig løp` til `grundig løp`.
- `oppgaver/ki-13-vurder-fysisk-delingsmodell-for-arbeidshusdelte-skills.md`: Rettet `grunnig løp` til `grundig løp`.
- `oppgaver/ki-14-vurder-tilbakeforing-av-eldre-arbeidshushistorikk.md`: Rettet `grunnig løp` til `grundig løp`.

## Validering

- Målrettet søk i `oppgaver/` i hkdir fant ikke flere forekomster av `grunnig løp`.
- Editor-diagnostikk rapporterte ingen feil i de tre oppgavefilene.

# KI-instruks 9
> fortsett

Oppfølging på delte skill-beskrivelser.

## Utført i th

- `.github/skills/oppia/SKILL.md`: Lagt til manglende generelle progresjonsfelt, eksempelblokker og arbeidsregler fra den rikere delte modellen, men beholdt prosjektstier og modulnavn generiske for `th`.
- `.github/skills/oppia/SKILL.md`: Gjorde fullføringsregelen robust ved å bruke kompetanseoversikt bare når en slik fil faktisk finnes.
- `.github/skills/journal/SKILL.md`: Harmonisert formuleringen for sletting av oppgavefiler ved `Avslutt` til den klarere varianten om filer brukeren har bekreftet som løst.

## Validering

- Editor-diagnostikk rapporterte ingen feil i `oppia/SKILL.md` eller `journal/SKILL.md`.

## Status

- Delte skill-beskrivelser er kommet nærmere hverandre, men skill-flaten er ikke helt ferdig harmonisert ennå.
- Gjenværende deltaer ligger fortsatt i `journal`, `list`, `oppia`, `oppia-innspill` og `prov`, mens `kartlegging`, `penger` og `ukeplan` fortsatt er th-spesifikke.

# KI-instruks 10
> fortsett

Avsluttende pulje i samme skill-runde.

## Utført i th

- `.github/skills/list/SKILL.md`: Lagt til en kort forklaring om at noen maskiner er arbeidshusdelte, mens andre bare gjelder dette arbeidsrommet.

## Validering

- Editor-diagnostikk på `list/SKILL.md` rapporterte ingen feil.

## Status

- Skill-flaten er videre harmonisert, men ikke fullført helt.
- Etter denne puljen gjenstår fortsatt navn- eller innholdsdiff i `journal`, `list`, `oppia`, `oppia-innspill` og `prov`, samt de bevisst th-spesifikke `kartlegging`, `penger` og `ukeplan`.

# KI-instruks 11
> fortsett med forslag 1, og fortsett av deg selv autonomisk til vi er helt ferdig med ki-12, ki-13, ki-14

Lukking av de tre parkerte arbeidshusoppgavene i hkdir.

## Utført i hkdir

- Opprettet `kiitos.kanalregistrene/styringsgrunnlag.arbeidshus/arbeidshus-visjoner.md` som kanonisk arbeidshusstyring for visjoner.
- Oppdaterte `kiitos.kanalregistrene/styringsgrunnlag/README.md` slik at arbeidshusstyring peker direkte til `styringsgrunnlag.arbeidshus/` i arbeidsromsroten.
- Utvidet `kiitos.hkdir/README.md` med eksplisitt beskrivelse av arbeidshusets aktive flater og en bevisst hybridmodell for delte skills.
- Presiserte samme hybridmodell i `kiitos.kanalregistrene/.github/skills/list/SKILL.md`.
- La inn fast regel for tilbakeføring av eldre arbeidshushistorikk i `kiitos.kanalregistrene/journal.arbeidshus/README.md`: sparsomt ankerspor, destillert læring og ingen full speiling av eldre kildejournaler.
- Vurderte kandidatene fra 2026-04-28 og 2026-05-03 og lot dem bli stående i kildejournalene uten egne nye arbeidshusoppføringer, fordi de dokumenterer pilot- og flattehistorikk mer enn en ny, udokumentert varig arbeidshusregel.
- Oppdaterte åpen referanse i `oppgaver/ki-10-...` til den nye kanoniske arbeidshusfila.
- Slettet de løste oppgavefilene `ki-12`, `ki-13` og `ki-14`.

## Validering

- Editor-diagnostikk rapporterte ingen feil i alle berørte filer.
- Målrettet søk i den aktive styringsflaten viser ikke lenger arbeidshusvisjoner som parkert i arbeidsrommet; bare bevisste pekere og bekreftelse på at flyttingen er gjennomført.

## Status

- ki-12 er lukket ved å opprette en liten, fysisk arbeidshusstyringsflate i arbeidsrommet.
- ki-13 er lukket ved å velge og dokumentere hybridmodellen for arbeidshusdelte skills.
- ki-14 er lukket ved å fastsette en smal og varig regel for tilbakeføring av eldre arbeidshushistorikk.

# KI-instruks 12
> Vi har allerede guide.arbeidshus og journal.arbeidshus i arbeidsrommet. Derfor passer det, i denne arbeidsromsmodellen med post-synkronisering av arbeidshus-instrukser å plassere styringsgrunnlag.arbeidshus samme sted. Oppdater instrukser og flytt mappen.
>
> Fjern de gamle tynne pekerfilene, og oppdater referanser til dem så de peker til den nye.
>
> La maskin list vise en inndeling av de arbeidsromspesifikke maskinene først og de arbeidshusspesifikke maskinene etterpå. La instrukser om maskiner/skills peke til at inndelingen ligger i list maskinen. (og vær bevisst bruken av norske ordet maskin istedenfor skill)

Flytting av arbeidshusstyring inn i arbeidsromsroten og oppstramming av maskinmodellen.

## Utført i hkdir

- Flyttet den kanoniske arbeidshusfila til `kiitos.kanalregistrene/styringsgrunnlag.arbeidshus/arbeidshus-visjoner.md` ved siden av `guide.arbeidshus/` og `journal.arbeidshus/`.
- Slettet den gamle rotfila i `kiitos.hkdir/styringsgrunnlag.arbeidshus/` og den gamle tynne pekerfila i `kiitos.kanalregistrene/styringsgrunnlag/`.
- Oppdaterte `README.md`, `.github/copilot-instructions.md`, `arbeidsbenk.md`, `guide.arbeidshus/installasjon.md`, `journal.arbeidshus/README.md`, `styringsgrunnlag/README.md` og `oppgaver/ki-10-...` til den nye plasseringen.
- Byttet aktiv omtale fra `skill` til `maskin` i de berørte maskin- og guidefilene.

## Utført i hkdir og th

- Oppdaterte `.github/skills/list/SKILL.md` slik at `list` nå eier den synlige inndelingen mellom arbeidsromsspesifikke og arbeidshusspesifikke maskiner.
- Oppdaterte `.github/skills/kalibrere-kiitos/SKILL.md` og `.github/skills/oppia/SKILL.md` slik at de peker til `list` når maskingrupperingen er relevant.
- La `th` vise arbeidsromsspesifikke maskiner først (`ukeplan`, `kartlegging`, `penger`) og arbeidshusspesifikke etterpå.
- La `hkdir` vise at det ikke finnes egne arbeidsromsspesifikke maskiner der akkurat nå, og at de eksisterende maskinene derfor ligger under arbeidshusspesifikk gruppe.

## Validering

- Editor-diagnostikk rapporterte ingen feil i alle berørte filer.
- Målrettet søk fant ikke flere aktive referanser til de slettede pekerfilene.
- Den gamle katalogen `kiitos.hkdir/styringsgrunnlag.arbeidshus/` ble fjernet etter flyttingen.

## Status

- Arbeidshusstyring følger nå samme fysiske arbeidsromsmodell som `guide.arbeidshus/` og `journal.arbeidshus/`.
- Den synlige maskininndelingen eies nå eksplisitt av `list`-maskinen.
