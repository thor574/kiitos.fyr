# Felles kjerne for oppia

Denne fila eier den delte oppia-arbeidsflyten som kan gjenbrukes på tvers av kiitos-arbeidsrom.

Lokal `SKILL.md` i hvert arbeidsrom eier moduloppdagelse, lokale eksempelnavn, lokal kompetanseoversikt og andre arbeidsromsspesifikke tillegg.

`oppia` er finsk for `å lære`. Navnet er kort nok til å fungere godt som maskinnavn.

Prosjektspesifikke kiitos-deler er del av aktiv kiitos på lik linje med arbeidsromslaget. `oppia` skal derfor bygge moduler fra det som faktisk er tilgjengelig i brukerens arbeidsrom akkurat nå, ikke fra en fast forhåndsliste.

## Oppia-modus

Oppia støtter to moduser som velges ved oppstart:

- **lære** (standard): Utvikleren lærer kiitos stegvis, batch for batch. Rammen er «les, forstå, godkjenn eller kommenter».
- **vurdere**: Utvikleren vurderer delt instrukssett som fagfelle. Rammen er «vurder, gi tilbakemelding, foreslå endringer». Vurderingsmodus er tilpasset erfarne utviklere som vil forstå hva kiitos gjør og gi konkrete bidrag til det delte instrukssettet.

Når bruker skriver `/maskin oppia`, spør kort hvilken modus de vil bruke. Hvis brukeren har påmønstringsmodus `stille` eller `utforskende` i sin pref-fil, foreslå `vurdere` som standard.

### Forskjeller i vurderingsmodus

- Kandidater presenteres med fokus på *hvorfor* regelen finnes og *hva den styrer*, ikke som pensum som skal læres.
- Godkjenning (`[x]`) betyr «denne regelen er fornuftig og bør bestå», ikke «jeg har lært den».
- Anmerkninger vektes tyngre: KI skal aktivt oppfordre til tilbakemelding og gjøre det lett å foreslå endringer.
- Vurderingstypen `bør endres` er tilgjengelig i tillegg til `uenig`, `justeringsforslag` og `nytt ønskekrav`.
- Når vurderingsløypa er ferdig, oppsummer anmerkningene som et konkret endringsforslag til delt instrukssett. Bruk `/maskin oppia-innspill` for å formatere dette.
- Status ved fullføring er `gjennomgått` i stedet for `bestått`.

Når bruker skriver `/maskin oppia`, bruk denne rekkefølgen:

1. Finn tilgjengelige moduler dynamisk i det aktive arbeidsrommet.
   - Ta med `arbeidsrom` når sentral kiitosflate finnes i arbeidsromsroten.
   - Ta med ett prosjekt per workspace-prosjekt som den lokale `SKILL.md`-fila definerer som oppia-relevant ut fra tilgjengelig `prosjektinstruks.md`.
   - Bruk prosjektets arbeidsromsnavn som modulnavn.
   - Ikke presenter moduler som ikke er tilgjengelige akkurat nå.
2. Presenter de tilgjengelige modulene først, og be brukeren velge hva som skal læres først.
   - Tillat én eller flere moduler i samme runde.
   - Hvis brukeren ikke velger eksplisitt, spør kort i stedet for å anta.
3. Opprett eller oppdater en lokal progresjonsfil i den sentrale `kompetanse.min/`-mappen.
   - Standardfil er `kompetanse.min/kiitos-oppia-lokalt.md`.
   - Hvis brukeren eksplisitt vil ha en egen fil for et bestemt modulsett, kan du bruke `kompetanse.min/kiitos-oppia-<modul>-lokalt.md` eller lignende.
   - Hvis en eksisterende lokal planfil allerede er i bruk for samme modulsett, fortsett i den i stedet for å lage en ny.
4. Lag læringsplanen dynamisk fra de valgte modulene slik de ser ut nå.
   - For `arbeidsrom`: bruk referansekoder i `styringsgrunnlag/*.md`, relevante guider i `guide/` og `guide/`, og relevante maskiner slik de er gruppert i `.github/skills/list/SKILL.md`.
   - For prosjektmoduler: start i prosjektets `prosjektinstruks.md`, bruk referansekoder i `.kiitos/styringsgrunnlag/*.md`, og relevante filer i `.kiitos/spesifikasjoner/` og andre aktive prosjektfiler i den lokale `.kiitos/`-flaten.
   - Ta med `oppgaver/` bare når brukeren vil ha oppgaveparken med i læringsplanen.
   - Ikke tell `Utgått` som aktivt pensum. Historiske ARV-er som fortsatt står som egne oppføringer kan tas med når brukeren vil ha hele beslutningssporet.
5. Lagre planen med tydelig moduloversikt, valgt modulsett, planversjon, skannedato, valgt modus (`lære` eller `vurdere`) og totalt antall læringspunkter.
   - I `## Tilgjengelige moduler ved siste skanning` skal hver modul stå med læringspunktantall i parentes, som `prosjekt-eksempel (37)`.
6. Oppsummer alltid:
   - brukerens kortnavn når det er kjent
   - valgt modulsett
   - antall moduler i valgt sett
   - vurdert antall
   - godkjent antall
   - antall med anmerkning
   - totalt antall læringspunkter
   - prosent vurdert
   - antall gjenstående
7. Når brukeren vil fortsette, velg neste kandidater blant de som ikke er markert som vurdert i hele den aktive planen. Standard er en tilfeldig batch på 3-5 kandidater. Hvis brukeren ønsker det, bytt til sekvensiell rekkefølge, en bestemt kategori eller én kandidat om gangen.
8. Vis som hovedregel 3-5 kandidater i samme batch med kort kontekst, filreferanse og eventuell referansekode for hver. Merk hver kandidat tydelig med modul eller kilde, som `[arbeidsrom]` og `[prosjekt-eksempel]`. Hvis det finnes færre enn 3 kandidater igjen, vis de som gjenstår. Legg alltid til et kort tips om at brukeren kan be om grundigere forklaring hvis noe i batchen er uforståelig.
9. Be brukeren bekrefte eksplisitt hvilke kandidater i batchen som er lest, vurdert eller forstått. Bruk disse markeringene i den lokale fila:
   - `[ ]` betyr ikke vurdert ennå
   - `[x]` betyr lest og godkjent, eller tydelig enig
   - `[1]`, `[2]` og videre betyr at kandidaten er vurdert med en konkret anmerkning
10. Når brukeren har en anmerkning, bruk neste ledige nummer og legg selve innspillet i `## Anmerkninger`. Hver anmerkning skal som minimum ha kandidat, vurderingstype (`uenig`, `justeringsforslag`, `nytt ønskekrav` eller `bør senkes`), kort begrunnelse og dato. Kandidater med nummer regnes som vurdert, men ikke som godkjent.
    - Typen `bør senkes` brukes når brukeren mener at en delt regel egentlig er personlig preferanse og bør flyttes ned til pref-fila. Når en slik anmerkning registreres, minn kort om at `/maskin regelflyt senk` kan brukes for å gjennomføre selve flyttingen.
11. Når den aktive planen er ferdig vurdert, skann de valgte modulene én gang til før du erklærer fullført.
   - Hvis nye læringspunkter er kommet til siden planen ble laget, legg dem under `## Tillegg etter ny skanning`, øk plantotalen og fortsett læringen.
   - Hvis ingen nye læringspunkter finnes i de valgte modulene, marker modulsettet som fullført.
12. Når de valgte modulene er fullført og uten nye tillegg, spør om brukeren vil lære flere moduler.
   - Presenter modulvalget på nytt ut fra det som er tilgjengelig da, ikke fra den gamle lista.
   - Hvis brukeren velger flere moduler, lag en ny planversjon og fortsett i samme lokale fil hvis det passer.
13. Når alle valgte moduler er fullført, ingen nye læringspunkter finnes, og ingen flere tilgjengelige moduler gjenstår eller brukeren takker nei til dem, sett status til `bestått` (lære-modus) eller `gjennomgått` (vurderingsmodus).
14. Når status blir `bestått` eller `gjennomgått`, spør om brukerens kortnavn hvis det ikke allerede finnes i planen, og registrer en kort fullføringspost i lokal kompetanseoversikt når den lokale `SKILL.md`-fila definerer en slik flate. Hvis ingen lokal kompetanseoversikt er definert, behold fullføringsstatusen i den lokale planfilen.
   - I vurderingsmodus: legg også til antall anmerkninger med type `bør endres` og `justeringsforslag`, slik at gruppen ser at det finnes konkrete innspill å behandle.
15. Hvis brukeren vil samle innspill underveis eller etter fullført løype, lag et datostemplet `oppia-innspill` i den lokale fila. Sammendraget skal være pedagogisk, konkret og motiverende å lese for gruppen, men fortsatt tro mot brukerens faktiske anmerkninger.

Anbefalt lokal progresjonsfil:

```markdown
# Kiitos-oppia lokalt
Sist oppdatert: YYYY-MM-DD
Bruker kortnavn: ikke satt ennå
Status: planlagt | pågår | bestått
Oppia-modus: lære | vurdere
Batch-modus: tilfeldig
Planversjon: 1
Sist skannet: YYYY-MM-DD
Vurdert: 0/0 (0 %)
Godkjent: 0
Med anmerkning: 0

## Tilgjengelige moduler ved siste skanning
- arbeidsrom (52)
- prosjekt-eksempel (37)

## Valgte moduler
- arbeidsrom
- prosjekt-eksempel

## Fullførte moduler
- ingen ennå

## Arbeidsrom-referansekoder
- [ ] DV-...
- [ ] ARV-...

## Arbeidsrom-filer
- [ ] guide/...
- [ ] guide/preferanser.md
- [ ] .github/skills/list/SKILL.md

## Prosjekt-referansekoder
- [ ] DV-LOK-...
- [ ] ARV-LOK-...

## Prosjekt-filer
- [ ] prosjekt-eksempel/.kiitos/prosjektinstruks.md
- [ ] prosjekt-eksempel/.kiitos/spesifikasjoner/...

## Tillegg etter ny skanning
- ingen ennå

## Aktiv batch
- [ ] [arbeidsrom] DV-...
- [ ] [prosjekt-eksempel] prosjekt-eksempel/.kiitos/prosjektinstruks.md
- [ ] [prosjekt-eksempel] prosjekt-eksempel/.kiitos/spesifikasjoner/...

## Sist registrert
- ingen ennå

## Anmerkninger
- ingen ennå

## Oppia-innspill
- ingen ennå

## Bestått
- nei ennå
```

Still kort avklaringsspørsmål hvis ett av disse punktene er uklart:

- Hvilke av de tilgjengelige modulene i dette arbeidsrommet vil brukeren lære først?
- Skal oppgaveparken være med i første runde, eller bare styringsgrunnlag og guider?
- Vil brukeren ha tilfeldig eller sekvensiell rekkefølge?
- Skal standardbatch være 3, 4 eller 5 kandidater?
- Skal denne modulkombinasjonen føres i standardfila eller i en egen lokal fil?
- Skal progresjon ligge i lokal fil eller permanent minne?
- Hva er brukerens kortnavn når fullføring skal føres i lokal kompetanseoversikt eller beholdes bare i den lokale planen?

Maskinen skal som hovedregel:

- holde individuell progresjon utenfor delte statusfiler
- bygge modulmenyen fra faktisk tilgjengelige arbeidsroms- og prosjektflater ved hver oppstart og hver ny modulrunde
- bruke arbeidsromslaget som én egen modul, ikke som skjult standard hvis brukeren ikke har valgt ennå
- starte i prosjektets `prosjektinstruks.md` når en prosjektmodul er valgt, og holde seg i den lokale `.kiitos/`-flaten før historikk
- merke hvert batchpunkt tydelig med hvilket system eller lag det gjelder
- lagre detaljert løypestatus lokalt i `kompetanse.min/`
- gjøre ny skanning før fullført eller bestått erklæres
- spørre om flere moduler når valgt modulsett er ferdig og uten nye tillegg
- bruke lokal kompetanseoversikt bare til kort fullføringsføring når den lokale `SKILL.md`-fila definerer en slik flate
- være knapp: én batch av gangen
- minne om at uklare kandidater kan forklares grundigere på forespørsel når en batch vises
- ikke anta at vist innhold er vurdert før brukeren har bekreftet hvilke punkter som faktisk er lest, godkjent eller har fått en anmerkning
- bruke `[x]` bare når brukeren faktisk er enig eller godkjenner punktet uten forbehold
- bruke én nummermarkør per kandidat så lenge anmerkningen er åpen, og samle eventuelle flere delpoenger under samme anmerkning
- kunne samle åpne anmerkninger til et datostemplet oppia-innspill uten å omskrive de rå notatene bort
- foretrekke lokal fil i `kompetanse.min/` når flere kolleger skal kunne bruke samme oppskrift uten å dele personstatus

Nyttige kanoniske referanser:

- `velkommen.md`
- `styringsgrunnlag/designvalg.md`
- `guide/preferanser.md`
- `.github/skills/list/SKILL.md` for aktiv inndeling mellom arbeidsromsspesifikke og universspesifikke maskiner
- `PROSJEKT/.kiitos/prosjektinstruks.md`