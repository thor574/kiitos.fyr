# Instruksintegritet

Denne guiden eier kontrollreglene for integritetssjekk av aktive kiitos-flater. Maskinen `integritetsjustere-kiitos` er en aktiveringswrapper som skal lese denne guiden først, ikke eie reglene selv.

## Hurtigoppslag

- Kontrollakser: `konsistens`, `lagvis DRY`, `korrekthet`, `rask oppslagsbarhet`, `skill-anatomi`, `intralenking`
- Standardomfang: hele aktive kiitos-installasjonen, inkludert prosjektlokale `.kiitos/`-flater
- Standardutelatelser: `journal/`, prosjektets `.kiitos/journal/`, `oppgaver/`, `oppgaver.mine/`, `analyse/` og andre historiske eller parkerte flater
- Tillatt auto-arbeid: små, reversible rettinger med tydelig eierfil og lav konflikt
- Stoppsignaler: uklart eierskap, divergerende sannhet, historikk som primærkilde, kontraktrisiko eller behov for nytt styringsvalg

## Kontrollakser

### Konsistens

Kontroller at aktive instruksfiler bruker samme navn, pekerbaner, lagforståelse og begreper for samme forhold.

Typiske avvik:

- gammel peker til fil som er omdøpt eller flyttet
- to aktive filer beskriver samme arbeidsrekkefølge med ulike navn eller ulikt omfang
- wrapper og eierfil omtaler samme maskin, lag eller mappe på ulike måter

### Lagvis DRY

Kontroller at stabil sannhet bare har én kanonisk eierfil, og at andre filer nøyer seg med kort lokal kontekst og peker videre.

Typiske avvik:

- samme standardregel gjentas i flere guider eller inngangsflater
- lokal wrapper bærer delbar kjerne som allerede har egen eierfil
- en ikke-eierfil prøver å eie steg, unntak eller standardverdier som skal bo lavere eller mer kanonisk

Bruk relevante designvalg i `styringsgrunnlag/designvalg.md`, særlig de som handler om lagdeling, faktaeierskap, delt kjerne kontra lokal wrapper og rask oppslagsbarhet, når eierskapet vurderes.

### Korrekthet

Kontroller at det som står i en aktiv instruksfil faktisk stemmer med dagens filer, navn, nivåer og ansvar.

Typiske avvik:

- en fil peker til feil mappe, feil lag eller feil maskinnavn
- en delbar fil viser til maskinlokale absolutte stier i stedet for logiske toppnavn i arbeidsrommet, som arbeidsrommets eget toppnavn, relevante prosjektnavn eller andre logiske navn som faktisk brukes i installasjonen
- tekst beskriver standardomfang eller utelatelser som ikke lenger gjelder
- en operativ fil sier at en annen fil eier noe den ikke eier

### Rask oppslagsbarhet

Kontroller at en leser raskt kan finne det viktigste i hver operativ instruksfil uten å lese hele filkjeden først.

Minstekrav for operative filer:

- formål eller rolle for fila
- hvilket lag eller nivå fila gjelder for
- hva som er kanonisk eier, hvis fila er wrapper eller pekerflate
- hva som er lokalt avvik eller lokalt tillegg, hvis slikt finnes
- fil- og mappehenvisninger som bruker logiske toppnavn i arbeidsrommet, ikke maskinlokale absolutte stier
- tydelig neste peker når leseren må videre

Hvis dette ikke kan forstås ved en kort skumlesing, er fila ikke raskt oppslagsbar nok.

### Skill-anatomi

Kontroller at aktive skills følger grunnkontrakten i `guide/skill-anatomi.md`, uten å bryte kiitos-mønsteret med aktiveringswrappere og kanoniske eierfiler.

Typiske avvik:

- `name` i frontmatter samsvarer ikke med mappenavnet
- `description` mangler tydelig bruksutløser
- en operativ skill mangler verifikasjon, røde flagg eller anti-rasjonalisering når den endres vesentlig
- en aktiveringswrapper skjuler hvilken fil som eier hovedreglene
- validatoren i `scripts/valider-skills.js` gir strukturelle feil

### Intralenking

Kontroller at markdown-lenker i operative filer peker til filer som faktisk finnes på angitt relativ sti.

Typiske avvik:

- lenke til fil som er omdøpt, flyttet eller slettet
- gen4-sti som `guide.arbeidshus/` eller `guide.univers/` som ikke lenger eksisterer
- lenke på tvers av workspace-røtter med feil relativ sti
- filer i `maler/` som lenker til filer som kun vil finnes etter deploy (forventet og greit)

Verifiser ved å resolvre relativ sti fra kildefilens plassering. Historiske flater (`journal/`, `analyse/`) er unntatt med mindre bruker ber om det.

## Standardomfang

Som standard kontrolleres aktive kiitos-flater i hele installasjonen:

- arbeidsrommets inngangsflater som `velkommen.md` og `LESMEG.md`
- delte og lokale kiitos-flater under `.github/`, `guide/`, `styringsgrunnlag/` og andre relevante aktive flater i installasjonen
- relevante arbeidsromsfiler som faktisk fungerer som operative instruksflater
- prosjektlokale `.kiitos/`-flater

Bruk journaler som evidenskilde når det trengs for å avgjøre hva som er nyere eller kanonisk, men ikke som bulk-omskrivingsmål.

## Standardutelatelser

Disse flatene er som hovedregel ute av scope og tas bare med etter eksplisitt brukerønske eller tydelig behov for evidens:

- `journal/`
- prosjektets `.kiitos/journal/`
- `oppgaver/`
- `oppgaver.mine/`
- `analyse/`
- andre historiske, parkerte eller brukerprivate flater

## Klassifisering av avvik

Alle funn skal klassifiseres før noe rettes:

- `trygg småretting`: liten, reversibel retting med klar sannhet og lav risiko, for eksempel feil peker, kort nedkorting i ikke-eierfil eller justering av maskinnavn
- `styringsløft`: funnet avdekker en ny stabil regel eller et uklart eierskap som må registreres i riktig styringsfil
- `parkering`: reelt sidefunn utenfor aktiv sats eller større ryddebehov som bør inn i `oppgaver/` eller annen parkert flate
- `manuell konflikt`: divergerende sannhet, uklart lag, lokal brukersmak, historikkavhengighet eller kontraktrisiko som ikke skal gjettes bort

## Arbeidsrekkefølge

1. Les arbeidsrommets aktive inngang og denne guiden først.
2. Avgrens sweepen til aktive kiitos-flater i relevant installasjon.
3. Finn avvik per kontrollakse.
4. Klassifiser hvert avvik før retting.
5. Utfør bare én liten ryddepuls om gangen.
6. Valider direkte etter hver puls med målrettet søk eller editor-diagnostikk.
7. Løft nye stabile regler til riktig styringsfil og parker resten tydelig.

## Stoppsignaler

Stopp auto-retting og rapporter tydelig når ett av disse gjelder:

- det er uklart hvilken fil som eier sannheten
- to aktive filer uttrykker reelt ulik lokal sannhet uten klar evidens
- rettingen vil dra inn historikk, journal eller parkert materiale som arbeidsflate
- endringen kan påvirke prosjektkontrakter, sikkerhetsforutsetninger eller andre ikke-lokale bindinger
- avviket krever bred omskriving i flere lag før sannheten er avklart
- oppslagsbarhet bare kan forbedres ved å gjette nytt strukturvalg i stedet for å bruke aktiv norm

## Forhold til andre maskiner

- `/maskin dry` (DRY-modus i `integritetsjustere-kiitos`) brukes når problemet primært er restduplisering eller uklart faktaeierskap i en smalere sweep.
- `/maskin regelflyt løft` brukes når integritetssjekken avdekker en stabil regel som bør løftes til univers, arbeidsrom eller prosjekt.

## Kanoniske referanser

- `velkommen.md`
- `styringsgrunnlag/designvalg.md`
- `styringsgrunnlag/begrepsmatrise.md`
- `guide/skill-anatomi.md`
- `.github/skills/integritetsjustere-kiitos/SKILL.md`
- `.github/skills/regelflyt/SKILL.md`