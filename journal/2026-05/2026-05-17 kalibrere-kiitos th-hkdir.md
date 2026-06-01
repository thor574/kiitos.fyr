# KI-instruks 1
> Follow instructions in #prompt:SKILL.md

## Problem: Kalibrere kiitos mellom th og hkdir

Gjennomførte en konservativ kalibreringsrunde mellom `kiitos.th/arbeidsrom` og `kiitos.hkdir/arbeidsrom.kanalregistrene`, med aktiv instruksflate lest i begge installasjoner før vurdering av sync.

### Symptomer / Årsak / Løsningsstrategi

Den aktive flaten var allerede langt harmonisert på universnivå, men to små resttyper stod igjen:

- hkdir hadde flere aktive pekere fra tidligere `arbeidsbenk.md` til filer som nå bruker `velkommen.md`
- th sin delte hurtigguide manglet den oppdaterte `oppgaver.mine/`-avgrensningen og brukte eldre `skill`-terminologi der resten av universflaten nå bruker `maskin`

Strategien var derfor å stoppe ved to enkle, reversible synker med klar støtte i aktiv instruksflate og journalspor: én peker-sats fra th til hkdir og én delbar guide-sats fra hkdir til th.

### Endringer Utført

Fra `kiitos.th/arbeidsrom` til `kiitos.hkdir/arbeidsrom.kanalregistrene`:

- Oppdaterte [../../guide.univers/installasjon.md](../../guide.univers/installasjon.md) slik at kopilista viser `velkommen.md` i stedet for `arbeidsbenk.md`.
- Oppdaterte [../../guide.univers/preferanser.md](../../guide.univers/preferanser.md) slik at peker til arbeidsrommets søkeflate går til `velkommen.md`.
- Oppdaterte [../../guide.univers/journal-system.md](../../guide.univers/journal-system.md) slik at arbeidsromsinngangen og eksempel-lenka peker til `velkommen.md`.
- Oppdaterte [../../guide/leveranse.md](../../guide/leveranse.md) slik at hierarki- og arbeidsflytpeker går til `velkommen.md`.
- Oppdaterte [../../guide/avdeling-og-organisering.md](../../guide/avdeling-og-organisering.md) slik at arbeidsrommets operative inngang peker til `velkommen.md`.

Fra `kiitos.hkdir/arbeidsrom.kanalregistrene` til `kiitos.th/arbeidsrom`:

- Oppdaterte [../../guide.univers/effektiv-samhandling-med-ki.md](../../guide.univers/effektiv-samhandling-med-ki.md) med `oppgaver.mine/**` som standardutelatelse.
- Oppdaterte samme fil med tydeligere `Scope discipline`-tekst for delbare kontra brukerprivate sidefunn.
- Oppdaterte samme fil fra `skill` til `maskin` i rubric-seksjonen for agentvurdering.

### Hoppet over

- `.github/copilot-kiitos-pref.md` og eventuell `copilot-pref.md`
- prosjektlokale `.kiitos/`
- `oppgaver/`, `oppgaver.mine/` og `analyse/`
- eksisterende `journal/` og `journal.univers/` som bulk-sync-mål
- `.github/skills/list/SKILL.md`, fordi forskjellen i praksis er arbeidsromsspesifikke maskiner i `th` (`kartlegging`, `penger`, `ukeplan`) som ikke skal løftes til hkdir automatisk

### Konflikter som gjenstår

1. Flere delte `.github/skills/*.md` i begge installasjoner bruker fortsatt `arbeidsbenk.md` som kanonisk referanse. Dette ble ikke auto-synket nå, fordi det krever en samlet og bevisst omdøpingssats i skill-laget, ikke enkel pekerkorrigering i guider.
2. `guide.univers/journal-system.md` er ikke helt lik mellom installasjonene utover pekerendringen. th har fortsatt en lokal duplisering av seksjonen `Avslutningsopprydding`, og den ble ikke flettet uten en egen, eksplisitt harmoniseringssats.

### Validering

- Editor-diagnostikk rapporterte ingen feil i de seks endrede filene.
- Målrettet restsøk bekreftet at `oppgaver.mine/**` og `maskin`-terminologien nå finnes i ths delte hurtigguide.
- Målrettet restsøk i de redigerte hkdir-guidene viste ingen gjenværende `arbeidsbenk.md`-pekere i den redigerte slices.

### Referanser

- Motpart synket mot: `kiitos.th/arbeidsrom`
- Mappe-mapping brukt i denne runden: `arbeidsbenk.md` → `velkommen.md`, `guide.univers/` ↔ `guide.univers/`, `guide/` ↔ `guide/`

### Status

✅ Fullført som lavrisiko sync-runde. Resten krever en mer samlet manuell avklaring før neste runde.



# KI-instruks 2
> Ta begge neste forslag, en etter den andre.

## Problem: Følge opp neste kalibreringsrunde for skills og journal-system

Gjennomførte de to neste foreslåtte kalibreringssatsene sekvensielt: først samlet omdøping i delte skill-filer fra `arbeidsbenk.md` til `velkommen.md`, deretter en smal harmonisering av `guide.univers/journal-system.md` mot motparten.

### Symptomer / Årsak / Løsningsstrategi

Forrige sync-runde hadde etterlatt to eksplisitte restpunkter:

1. delte `.github/skills/*.md` i begge installasjoner brukte fortsatt `arbeidsbenk.md` som aktiv referanse
2. `guide.univers/journal-system.md` hadde fortsatt reelle tekstforskjeller mellom installasjonene, inkludert en dublettseksjon i th

Løsningsstrategien var å ta disse én etter én med smalest mulig omfang: først en samlet skill-sats med klar journalstøtte for omdøpingen, deretter en isolert harmonisering av bare den ene delte guidefila.

### Endringer Utført

I begge installasjoner:

- Oppdaterte [../../.github/skills/dry/SKILL.md](../../.github/skills/dry/SKILL.md) fra `arbeidsbenk.md` til `velkommen.md` i kanonisk referanse.
- Oppdaterte [../../.github/skills/kalibrere-kiitos/SKILL.md](../../.github/skills/kalibrere-kiitos/SKILL.md) slik at aktiv instruksflate, standard omfang og kanoniske referanser bruker `velkommen.md`.
- Oppdaterte [../../.github/skills/kalibrere-minner/SKILL.md](../../.github/skills/kalibrere-minner/SKILL.md) slik at aktiv instruksflate og kanoniske referanser bruker `velkommen.md`.
- Oppdaterte [../../.github/skills/oppia/SKILL.md](../../.github/skills/oppia/SKILL.md) slik at kanonisk referanse bruker `velkommen.md`.
- Oppdaterte [../../.github/skills/verktoy/SKILL.md](../../.github/skills/verktoy/SKILL.md) fra `arbeidsbenk`-ramme til `velkommen`-ramme.

I `kiitos.th/arbeidsrom`:

- Oppdaterte [../../guide.univers/journal-system.md](../../guide.univers/journal-system.md) til samme delte tekst som motparten: fjernet dublett av `Avslutningsopprydding`, generaliserte innledningen fra «den flate kiitos-modellen» til `kiitos-modellen`, presiserte at tverrgående saker journalføres for arbeidsrommet, og harmoniserte nivåregelen til `arbeidsromsopplegget`.

I `kiitos.hkdir/arbeidsrom.kanalregistrene`:

- Ingen egen tekstendring i `guide.univers/journal-system.md`; fila fungerte som ren måltekst for harmoniseringen.

### Hoppet over

- `.github/copilot-kiitos-pref.md` og eventuell `copilot-pref.md`
- prosjektlokale `.kiitos/`
- `oppgaver/`, `oppgaver.mine/`, `analyse/` og historiske journalfiler
- `.claude/`-flater og andre ikke-synkede agentspor utenfor standardomfanget for denne maskinen

### Konflikter som gjenstår

- Ingen åpne konflikter gjenstår i de delte skill-filene eller i `guide.univers/journal-system.md` etter denne runden.
- Eventuelle gjenværende `arbeidsbenk.md`-referanser utenfor denne satsen må vurderes separat hvis de ligger i historikk, analyse eller andre flater som ikke ble tatt med nå.

### Validering

- Målrettet restsøk i delte `.github/skills/*.md` ga ingen gjenværende treff på `arbeidsbenk.md` i noen av installasjonene.
- `git diff --no-index` mellom de to `guide.univers/journal-system.md`-filene ga ingen output etter harmoniseringen.
- Editor-diagnostikk rapporterte ingen feil i de ti endrede skill-filene eller i den harmoniserte guidefila.

### Referanser

- Motpart synket mot: `kiitos.th/arbeidsrom`
- Mappe-mapping brukt videre i denne runden: `arbeidsbenk.md` → `velkommen.md`, `guide.univers/` ↔ `guide.univers/`, `.github/skills/` ↔ `.github/skills/`

### Status

✅ Fullført. Begge neste forslag er gjennomført i rekkefølge og de to eksplisitte restpunktene fra forrige runde er lukket.



# KI-instruks 3
> Fortsett

## Problem: Fortsette etter de lukkede restpunktene og stoppe ved neste reelle konfliktnivå

Fortsatte kalibreringen etter at skill-referansene og `guide.univers/journal-system.md` var harmonisert. Målet var å ta neste trygge delte forskjeller og stoppe når de gjenstående filene tydelig var arbeidsromsspesifikke, lokalt bundne eller bare hadde ikke-semantiske formatforskjeller.

### Symptomer / Årsak / Løsningsstrategi

Etter forrige runde sto det fortsatt igjen forskjeller i delte termfiler, pref-mal, `prov`, `oppia`, `oppia-innspill`, `list` og `installasjon`. De måtte skilles mellom:

- små delbare språk- og formatteringsforskjeller
- brede arbeidsromsspesifikke forskjeller som ikke skal auto-synkes
- ikke-semantiske filformatforskjeller som ikke er verdt egen omskriving

Strategien var å ta én smal kandidat om gangen, validere direkte med `git diff --no-index`, og stanse automatisk der innholdet gikk over i arbeidsromslokal eller prosjektbundet praksis.

### Endringer Utført

Fra `kiitos.hkdir/arbeidsrom.kanalregistrene` til `kiitos.th/arbeidsrom`:

- Oppdaterte [../../guide.univers/termer.md](../../guide.univers/termer.md) fra `(Listen er tom)` til `(ingen ennå)` i beslutningsseksjonen.
- Oppdaterte [../../.github/skills/prov/SKILL.md](../../.github/skills/prov/SKILL.md) slik at `## Bruk`-seksjonen bruker samme punktlisteformat som motparten.

Fra `kiitos.th/arbeidsrom` til `kiitos.hkdir/arbeidsrom.kanalregistrene`:

- Oppdaterte [../../guide.univers/terminologi.md](../../guide.univers/terminologi.md) fra `arbeidsbenken` til `arbeidsrommet` i innledningen.
- Oppdaterte [../../.github/copilot-kiitos-pref-mal.md](../../.github/copilot-kiitos-pref-mal.md) slik at kanarifugl-kandidaten bruker `Arbeidsrommet nynner lavt, og alt er i rute`.

I begge installasjoner:

- Rettet [../../.github/skills/prov/SKILL.md](../../.github/skills/prov/SKILL.md) fra ugyldig frontmatter `name: prøv` til gyldig `name: prov`, slik at skill-navnet matcher mappenavnet og valideringsreglene.

### Hoppet over

- [../../guide.univers/installasjon.md](../../guide.univers/installasjon.md), fordi diffen fortsatt er bred og tydelig arbeidsromsspesifikk med ulike arbeidsromsmodeller, kodeprosjektsett og lokale oppsettssteg.
- [../../.github/skills/list/SKILL.md](../../.github/skills/list/SKILL.md), fordi den synlige maskinoversikten fortsatt eies av hvert arbeidsroms faktiske maskinsett.
- [../../.github/skills/oppia/SKILL.md](../../.github/skills/oppia/SKILL.md), fordi diffen nå er bundet til ulike prosjektmodeller, kompetanseflater og konkrete modulnavn i hvert arbeidsrom.
- [../../.github/skills/oppia-innspill/SKILL.md](../../.github/skills/oppia-innspill/SKILL.md), fordi forskjellen som gjenstår er ikke-semantisk linjeslutt uten innholdsendring.

### Konflikter som gjenstår

1. `guide.univers/installasjon.md` er fortsatt manuell konflikt og bør ikke auto-synkes videre.
2. `.github/skills/list/SKILL.md` og `.github/skills/oppia/SKILL.md` er fortsatt arbeidsromsspesifikke og bør bare endres ved bevisst manuell fletting.
3. `oppia-innspill` og `prov` kan fortsatt ha ikke-semantiske filformatforskjeller på frontmatter-/linjesluttnivå, men ingen innholdskonflikt som krevde videre auto-sync.

### Validering

- `git diff --no-index` ga ingen output for filparene `termer.md`, `terminologi.md` og `.github/copilot-kiitos-pref-mal.md` etter synk.
- Editor-diagnostikk rapporterte ingen feil i de endrede termfilene eller i pref-malen.
- Editor-diagnostikk fanget ugyldig `name: prøv` i begge `prov`-filer; dette ble rettet til `name: prov`, og ny diagnostikk rapporterte ingen feil.
- `prov` står igjen med en ikke-semantisk frontmatter-/linjesluttdiff, men ikke med innholdsavvik.

### Referanser

- Motpart synket mot: `kiitos.th/arbeidsrom`
- Videre mappe-mapping i denne runden: `guide.univers/` ↔ `guide.univers/`, `.github/skills/` ↔ `.github/skills/`, `.github/copilot-kiitos-pref-mal.md` ↔ `.github/copilot-kiitos-pref-mal.md`

### Status

✅ Fortsett-runden er fullført fram til neste reelle konfliktgrense. Gjenværende forskjeller er nå enten arbeidsromsspesifikke eller ikke-semantiske.



# KI-instruks 4
> Nei til begge de to forslagene.  Ser du hvorfor jeg ikke ønsker det?  Legg det i så fall inn som et designvalg.

## Problem: Fange stoppsignalet som designvalg i stedet for å fortsette splitting av operative filer

Ja. Avvisningen peker på at de to gjenstående forslagene ville presset fram en kunstig modell med universkjerne pluss lokale overstyringer i filer som nå fungerer som operative eierfiler for hvert arbeidsrom. Det ville redusert diff, men samtidig gjort filene mindre direkte lesbare, svekket prinsippet om én tydelig eierflate per lokal sannhet og økt mengden indirection i aktiv bruk.

### Endringer Utført

- Oppdaterte [../../styringsgrunnlag/designvalg.md](../../styringsgrunnlag/designvalg.md) med nytt designvalg `DV-LOK-ARB-21` om at operative eierfiler ikke skal splittes i universkjerne og lokal overstyring bare for sync.

### Konsekvens

- `guide.univers/installasjon.md`, `.github/skills/list/SKILL.md` og `.github/skills/oppia/SKILL.md` skal kunne forbli hele, arbeidsromsspesifikke eierfiler når restforskjellen er reell lokal sannhet.
- Videre kalibrering skal da prioritere små delbare løft og egne naturlige eierfiler, ikke nye overlay-lag.

### Status

✅ Registrert som designvalg i Kanalregistrene.



# KI-instruks 5
> Oj, jeg ser nå at mitt valg var feil.  Du kan fjerne det designvalget og innføre førslagene dine.  Jeg er spent på hvordan det blir.

## Problem: Reversere stoppsignalet og innføre delt kjerne pluss lokale wrappere der kjernen faktisk var stabil

Brukeren reverserte designvalget fra forrige runde. Det ga grunnlag for å prøve den modellen som først ble avvist: skille ut faktisk delbar kjerne i egne nabofiler og la de lokale operative filene stå igjen som direkte brukbare wrappere med bare arbeidsromsspesifikk sannhet.

### Endringer Utført

I begge installasjoner:

- Oppdaterte [../../styringsgrunnlag/designvalg.md](../../styringsgrunnlag/designvalg.md) slik at det nye designvalget nå tillater og anbefaler delt kjerne pluss lokal wrapper når kjernen er stabil og wrapperen fortsatt er direkte brukbar.
- La til [../../guide.univers/installasjon-kjerne.md](../../guide.univers/installasjon-kjerne.md) som identisk delt installasjonskjerne.
- Gjorde [../../guide.univers/installasjon.md](../../guide.univers/installasjon.md) om til arbeidsromsspesifikk wrapper som peker til installasjonskjernen for felles stoff.
- La til [../../.github/skills/list/kjerne.md](../../.github/skills/list/kjerne.md) som identisk delt kjerne for maskinoversikt og felles hint.
- Gjorde [../../.github/skills/list/SKILL.md](../../.github/skills/list/SKILL.md) om til lokal wrapper som bare bærer arbeidsromsspesifikke maskiner, lokale tillegg og lokale hint.
- La til [../../.github/skills/oppia/kjerne.md](../../.github/skills/oppia/kjerne.md) som identisk delt arbeidsflyt for `oppia`.
- Gjorde [../../.github/skills/oppia/SKILL.md](../../.github/skills/oppia/SKILL.md) om til lokal wrapper som bare bærer moduloppdagelse, lokale fullføringsregler og lokale referanser.

### Konsekvens

- `installasjon`, `list` og `oppia` har nå en faktisk delt kjerne i stedet for to parallelle helfiler med delvis overlapp.
- Lokal sannhet er fortsatt lokal: prosjektsett, maskininventar, moduloppdagelse og fullføringsflate ligger fortsatt i arbeidsrommets egne wrapper-filer.
- Modellen som ble avvist i forrige runde er nå innført i en smalere og mer lesbar form enn den først fremstod som.

### Validering

- Editor-diagnostikk rapporterte ingen feil i alle nye og oppdaterte `installasjon`, `list` og `oppia`-filer.
- `git diff --no-index` mellom de to `installasjon-kjerne.md`-filene ga ingen output.
- `git diff --no-index` mellom de to `list/kjerne.md`-filene ga ingen output.
- `git diff --no-index` mellom de to `oppia/kjerne.md`-filene ga ingen output.

### Status

✅ Fullført. Stoppsignalet fra KI-instruks 4 er erstattet av faktisk innført kjerne-wrapper-modell i begge installasjoner.



# KI-instruks 6
> Follow instructions in #prompt:SKILL.md

## Problem: Rydde en liten rest av gammel arbeidshus-navngiving i aktive hkdir-filer

Etter innføringen av kjerne-wrapper-modellen stod det igjen en liten, tydelig lokal rest i `kiitos.hkdir/arbeidsrom.kanalregistrene`: aktive filer pekte fortsatt til `guide.arbeidshus/`, `styringsgrunnlag.arbeidshus/` og `journal.arbeidshus/`, selv om den fysiske modellen nå bruker `guide.univers/`, `styringsgrunnlag.univers/` og `journal.univers/`.

### Symptomer / Årsak / Løsningsstrategi

Dette var ikke en bred konflikt, men en stale navnerest. Billig kontroll viste at de gamle `*.arbeidshus/`-mappene ikke finnes lenger i aktiv hkdir-rot, mens `*.univers/`-mappene finnes og er kanoniske. Strategien var derfor å gjøre en ensidig lavrisiko-sync i bare de aktive hkdir-filene som fortsatt brukte gammel navngiving.

### Endringer Utført

Fra `kiitos.th/arbeidsrom` til `kiitos.hkdir/arbeidsrom.kanalregistrene`:

- Oppdaterte [../../velkommen.md](../../velkommen.md) slik at aktive flater og maskinmodell beskrives med `guide.univers/`, `styringsgrunnlag.univers/` og `journal.univers/` i stedet for gamle `arbeidshus`-mapper.
- Oppdaterte [../../journal.univers/README.md](../../journal.univers/README.md) fra `arbeidshus`-språk og gamle mapper til `univers`-språk og korrekte `guide.univers/`- og `styringsgrunnlag.univers/`-pekere.
- Oppdaterte [../../.github/skills/journal/SKILL.md](../../.github/skills/journal/SKILL.md) slik at beskrivelsen sier `univers, arbeidsrom eller prosjekt` i stedet for `arbeidshus, arbeidsrom eller prosjekt`.

Fra `kiitos.hkdir/arbeidsrom.kanalregistrene` til `kiitos.th/arbeidsrom`:

- Ingen filer ble synket tilbake i denne runden.

### Hoppet over

- Historiske journaler under `journal.univers/20**/`, selv om de fortsatt inneholder `arbeidshus` som del av historisk kontekst
- Øvrige filer utenfor aktiv instruksflate
- `installasjon`, `list` og `oppia`, som allerede ble tatt i forrige runde og ikke hadde nye små restsaker nå

### Konflikter som gjenstår

1. Historiske journalfiler i hkdir bærer fortsatt `arbeidshus`-språk fra eldre modell. Dette er historikk, ikke aktiv styring, og bør bare ryddes ved en egen bevisst historikksats.

### Validering

- Kataloglisting i `kiitos.hkdir/arbeidsrom.kanalregistrene` bekreftet at `guide.univers/`, `styringsgrunnlag.univers/` og `journal.univers/` finnes, mens de gamle `*.arbeidshus/`-mappene ikke er aktive.
- Målrettet søk i aktive hkdir-flater viste stale `arbeidshus`-treff i `velkommen.md`, `journal.univers/README.md` og `.github/skills/journal/SKILL.md`, og ingen tilsvarende aktive treff i `guide/`, `guide.univers/`, `styringsgrunnlag/`, `styringsgrunnlag.univers/` eller `spesifikasjoner/`.

### Status

✅ Fullført som lavrisiko sync-runde. Aktiv hkdir-flate bruker nå `univers`-navngiving der de gamle arbeidshus-pekene bare var stale rester.



# KI-instruks 7
> Follow instructions in #prompt:SKILL.md

## Problem: Løfte delbar gitmodell og journal-auto-commit-støtte fra th til hkdir

Et nytt, smalt diff-søk på bare felles relative filer viste at de fleste gjenværende forskjellene fortsatt er arbeidsromsspesifikke wrappere eller lokale eierfiler. Én liten kjerne skilte seg ut som tydelig delbar: `th` hadde samme dag innført generell støtte for flere gitmodeller per arbeidsrom og betinget auto-commit etter journalføring, der lokal `installasjon.md` fortsatt eier om regelen faktisk skal brukes.

### Symptomer / Årsak / Løsningsstrategi

- Målrettet journalsøk i `th` viste at dagens sats om samlet git-rot bevisst skilte mellom delbar kjerne og lokal spesialordning.
- `guide.univers/installasjon-kjerne.md`, `guide.univers/journal-system.md` og `.github/skills/journal/SKILL.md` hadde derfor små, generiske tillegg som manglet i `hkdir`.
- `guide.univers/installasjon.md` i `th` hadde samtidig en lokal spesialordning for samlet git-rot og auto-commit, og skulle derfor ikke synkes over.
- Strategien ble å synke bare de tre generiske kjernedelene fra `th` til `hkdir`, validere direkte mot motparten og la resten stå urørt.

### Endringer Utført

Fra `kiitos.th/arbeidsrom` til `kiitos.hkdir/arbeidsrom.kanalregistrene`:

- Oppdaterte [../../guide.univers/installasjon-kjerne.md](../../guide.univers/installasjon-kjerne.md) med delbar seksjon om gitmodell per arbeidsrom, inkludert eksterne git-endepunkter versus samlet lokal git-rot.
- Oppdaterte [../../guide.univers/journal-system.md](../../guide.univers/journal-system.md) slik at standardregelen fortsatt er commit-forslag, men nå også støtter arbeidsrom som eksplisitt krever faktisk auto-commit etter journalføring.
- Oppdaterte [../../.github/skills/journal/SKILL.md](../../.github/skills/journal/SKILL.md) slik at journalmaskinen håndhever den samme betingede auto-commit-regelen når arbeidsrommet har erklært den lokalt.
- Normaliserte UTF-8-koding i `hkdir` sin `journal`-skill slik at filparet ikke lenger avviker bare på BOM.

Fra `kiitos.hkdir/arbeidsrom.kanalregistrene` til `kiitos.th/arbeidsrom`:

- Ingen filer ble synket tilbake i denne runden.

### Hoppet over

- `.github/copilot-kiitos-pref.md` og eventuell `copilot-pref.md`
- prosjektlokale `.kiitos/`
- `oppgaver/`, `oppgaver.mine/`, `analyse/` og eksisterende journaler som bulk-sync-mål
- [../../guide.univers/installasjon.md](../../guide.univers/installasjon.md), fordi `th` har lokal spesialordning for samlet git-rot og auto-commit som ikke er delbar som hel fil
- [../../velkommen.md](../../velkommen.md), [../../.github/copilot-instructions.md](../../.github/copilot-instructions.md), [../../.github/skills/list/SKILL.md](../../.github/skills/list/SKILL.md), [../../.github/skills/oppia/SKILL.md](../../.github/skills/oppia/SKILL.md), [../../.github/skills/oppia-innspill/SKILL.md](../../.github/skills/oppia-innspill/SKILL.md), [../../guide/kiitos.md](../../guide/kiitos.md), `styringsgrunnlag/*` og [../../spesifikasjoner/README.md](../../spesifikasjoner/README.md), fordi restdiffene fortsatt er arbeidsromsspesifikke eller krever bevisst manuell fletting

### Konflikter som gjenstår

1. [../../guide.univers/installasjon.md](../../guide.univers/installasjon.md) er fortsatt lokal wrapper med reell arbeidsromsspesifikk sannhet og bør ikke auto-synkes videre.
2. [../../velkommen.md](../../velkommen.md), [../../.github/copilot-instructions.md](../../.github/copilot-instructions.md), [../../.github/skills/list/SKILL.md](../../.github/skills/list/SKILL.md) og [../../.github/skills/oppia/SKILL.md](../../.github/skills/oppia/SKILL.md) inneholder fortsatt bevisst lokal arbeidsromslogikk.

### Validering

- `git diff --no-index` ga ingen output for de tre synkede filparene etter patch og encoding-normalisering.
- Målrettet kontroll av lokal `hkdir`-installasjon fant ingen eksisterende auto-commit-regel som kolliderer med den nye generiske kjernestøtten.

### Referanser

- Motpart synket mot: `kiitos.th/arbeidsrom`
- [../../guide.univers/installasjon-kjerne.md](../../guide.univers/installasjon-kjerne.md)
- [../../guide.univers/journal-system.md](../../guide.univers/journal-system.md)
- [../../.github/skills/journal/SKILL.md](../../.github/skills/journal/SKILL.md)

### Status

✅ Fullført som smal th → hkdir-sync av delbar kjerne. Resten står bevisst urørt.



# KI-instruks 8
> Gjør punkt 2

## Problem: Dele instruksintegritet-maskinen og den kanoniske guiden til th

Neste smale kandidatrunde handlet om de to restpekerne som allerede viste seg i delte filer: `integritetsjustere-kiitos` i maskinkjernen og `instruksintegritet.md` i universintroen. Billig kontroll viste at begge filene finnes i `hkdir`, mangler i `th`, og allerede er journalført i `hkdir` som delbar universkjerne.

### Symptomer / Årsak / Løsningsstrategi

- `th` manglet både [../../.github/skills/integritetsjustere-kiitos/SKILL.md](../../.github/skills/integritetsjustere-kiitos/SKILL.md) og [../../guide.univers/instruksintegritet.md](../../guide.univers/instruksintegritet.md).
- Diffen i [../../.github/skills/list/kjerne.md](../../.github/skills/list/kjerne.md) og [../../guide.univers/kiitos.md](../../guide.univers/kiitos.md) viste at de delte oppdagbarhetspekerne også manglet i `th`.
- Journalføringen i `hkdir` for etableringen av maskinen viste samtidig at guiden hadde fått en lokal henvisning til designvalg og lokale toppnavn som ikke var delbar som ren helfil.
- Strategien ble derfor å synke maskinen og guiden til `th`, løfte inn den ene nødvendige støtteføringen i `th` sitt `styringsgrunnlag/designvalg.md`, og samtidig generalisere selve universguiden i begge installasjoner slik at den ble reelt delbar.

### Endringer Utført

Fra `kiitos.hkdir/arbeidsrom.kanalregistrene` til `kiitos.th/arbeidsrom`:

- La til [../../guide.univers/instruksintegritet.md](../../guide.univers/instruksintegritet.md) i `th`.
- La til [../../.github/skills/integritetsjustere-kiitos/SKILL.md](../../.github/skills/integritetsjustere-kiitos/SKILL.md) i `th`.
- Oppdaterte [../../.github/skills/list/kjerne.md](../../.github/skills/list/kjerne.md) i `th` med ny universmaskin og nytt hint for når den bør foreslås.
- Oppdaterte [../../guide.univers/kiitos.md](../../guide.univers/kiitos.md) i `th` med én kort peker til den nye guiden.
- Oppdaterte [../../styringsgrunnlag/designvalg.md](../../styringsgrunnlag/designvalg.md) i `th` med `DV-LOK-ARB-22`, fordi den nye guiden trenger en lokal norm for rask oppslagsbarhet.

I begge installasjoner:

- Generaliserte [../../guide.univers/instruksintegritet.md](../../guide.univers/instruksintegritet.md) slik at den ikke lenger peker til arbeidsromsspesifikke designvalgskoder eller lokale toppnavn, men beskriver delbare prinsipper for lagdeling, faktaeierskap, kjerne versus wrapper og logiske toppnavn.

### Hoppet over

- `.github/copilot-kiitos-pref.md` og eventuell `copilot-pref.md`
- prosjektlokale `.kiitos/`
- `oppgaver/`, `oppgaver.mine/`, `analyse/` og eksisterende journaler som bulk-sync-mål
- [../../.github/skills/list/SKILL.md](../../.github/skills/list/SKILL.md), fordi lokal wrapper fortsatt eies av hvert arbeidsroms faktiske maskinsett
- [../../velkommen.md](../../velkommen.md), [../../.github/copilot-instructions.md](../../.github/copilot-instructions.md), [../../guide.univers/installasjon.md](../../guide.univers/installasjon.md), [../../.github/skills/oppia/SKILL.md](../../.github/skills/oppia/SKILL.md), [../../.github/skills/oppia-innspill/SKILL.md](../../.github/skills/oppia-innspill/SKILL.md), [../../guide/kiitos.md](../../guide/kiitos.md), øvrige `styringsgrunnlag/*` og [../../spesifikasjoner/README.md](../../spesifikasjoner/README.md), fordi de gjenværende diffene fortsatt er lokale eller krever egen manuell fletting

### Konflikter som gjenstår

1. [../../.github/skills/list/SKILL.md](../../.github/skills/list/SKILL.md) er fortsatt lokal wrapper og skal ikke auto-synkes så lenge arbeidsrommenes maskinsett er ulike.
2. [../../velkommen.md](../../velkommen.md), [../../.github/copilot-instructions.md](../../.github/copilot-instructions.md), [../../guide.univers/installasjon.md](../../guide.univers/installasjon.md) og [../../.github/skills/oppia/SKILL.md](../../.github/skills/oppia/SKILL.md) bærer fortsatt bevisst lokal sannhet.

### Validering

- `git diff --no-index` ga ingen output for de delte filparene [../../guide.univers/instruksintegritet.md](../../guide.univers/instruksintegritet.md), [../../.github/skills/integritetsjustere-kiitos/SKILL.md](../../.github/skills/integritetsjustere-kiitos/SKILL.md), [../../.github/skills/list/kjerne.md](../../.github/skills/list/kjerne.md) og [../../guide.univers/kiitos.md](../../guide.univers/kiitos.md) etter generaliseringen.
- Editor-diagnostikk rapporterte ingen feil i de nye eller oppdaterte filene i `th`, og ingen feil i den generaliserte guiden i `hkdir`.

### Referanser

- Motpart synket mot: `kiitos.th/arbeidsrom`
- [../../guide.univers/instruksintegritet.md](../../guide.univers/instruksintegritet.md)
- [../../.github/skills/integritetsjustere-kiitos/SKILL.md](../../.github/skills/integritetsjustere-kiitos/SKILL.md)
- [../../.github/skills/list/kjerne.md](../../.github/skills/list/kjerne.md)
- [../../guide.univers/kiitos.md](../../guide.univers/kiitos.md)

### Status

✅ Fullført som smal delingssats av instruksintegritet til `th`, med samtidig generalisering av universguiden i begge installasjoner.