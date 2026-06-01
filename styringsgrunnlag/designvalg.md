# Designvalg for kiitos (universelt)

## Sist revidert: 2026-05-25

Gjeldende universelle standarder og føringer for utforming av kiitos-modellen.
Designvalg er normgivende og kan revideres, i motsetning til ARV-er som er historiske.

Når et stabilt og normgivende valg avklares i samtalen eller arbeidet, og det gjelder kiitos på tvers av arbeidsrom, skal det registreres fortløpende her.

## DV-KIITOS – Universelle kiitos-prinsipper

- `DV-KIITOS-01`: Operativ prosjektkunnskap skal ligge i prosjektets lokale `.kiitos/`, mens laugnivået skal bære delte regler, oversikter og pekere mellom lagene.
- `DV-KIITOS-02`: Nytt førende innhold skal ligge i fyret → `guide/installasjon.md` for universelle guider, i laugets `guide/` for laugspesifikt innhold, ellers i lokal prosjekt-`.kiitos/`, avhengig av nivå og ansvar.
- `DV-KIITOS-03`: Kiitos bruker fire operative lag: universelt lag i fyret, lauglag i `kiitos.laug.*`, personlig ruff i `kiitos.ruff.*`, og prosjektlag i `.kiitos/`. Rotens `AGENTS.md` og `.github/copilot-instructions.md` er inngangsfiler, ikke egne kunnskapslag.
- `DV-KIITOS-04`: `.github/copilot-kiitos-pref-mal.md` er innsjekket mal, mens `.github/copilot-kiitos-pref.md` er lokal og ignorert av Git. `copilot-pref.md` kan eksistere ved siden av som valgfri lokal Copilot-pref utenfor kiitos-modellen. Den private kiitos-fila skal bare bære personlige valg, ikke delte kontrakter eller tekniske sannheter.
- `DV-KIITOS-05`: Den delbare kiitos-kjernen består av innsjekkede filer i rotens `.claude/`, `.github/` og øvrig innsjekket innhold i kiitos-repoet.
- `DV-KIITOS-06`: Påmønstring for fysisk oppkobling av VS Code-workspace skal ligge i `kiitos.fyr/guide/installasjon.md`. Workspace-synlig `README.md` skal være en kort, menneskevendt toppflate som forklarer hva kiitos er og peker videre til `LESMEG.md`.
- `DV-KIITOS-07`: Høyere nivå skal være mer overordnet enn lavere nivå. Detaljer skal flyttes ned til laveste riktige fil i stedet for å dupliseres oppover mellom `kiitos.fyr/guide/installasjon.md`, `LESMEG.md`, `velkommen.md`, guider og prosjektflater.
- `DV-KIITOS-08`: Hver stabil faktatype i kiitos skal ha én kanonisk eierfil. Andre filer skal som hovedregel bare peke til eierfila, ikke gjengi samme steg, begrunnelser, unntak eller standardverdier på nytt. Plasseringslogikk, personvern og lagregel eies av `guide/plassering.md`.
- `DV-KIITOS-09`: Tillatt bevisst gjentakelse i ikke-eierfiler er begrenset til kort lokal kontekst, lokale forutsetninger og en kort peker videre. Fysisk påmønstring eies av `kiitos.fyr/guide/installasjon.md`, restartbar navigasjon eies av `LESMEG.md`, mens bootstraprekkefølgen eies av `velkommen.md` i laugroten.
- `DV-KIITOS-10`: Individuell gjennomgang av kiitos, inkludert godkjenninger, anmerkninger og oppia-innspill, skal lagres i lokal, gitignorert flate som `kompetanse.min/`, mens delte filer som `guide/ansvar.md` bare skal bære stabile roller, kontaktpunkter og annen felles sannhet.
- `DV-KIITOS-11`: Inntil kiitos er polert gjennom bruk og eventuelt låses som historisk strukturvalg, skal migrerte prosjekter ikke bruke prosjektlokal `.github/copilot-instructions.md` som eget inngangslag. Rotens `.github/copilot-instructions.md` skal dispatch-e direkte til prosjektets lokale `.kiitos/prosjektinstruks.md`.
- `DV-KIITOS-12`: Detaljert oppia-progresjon skal fortsatt være lokal, men når en oppia-løype er fullført, ferdig ny-skannet og uten nye læringspunkter, kan en kort delt fullføringsføring registreres i laugets `guide/kompetanse.md`.
- `DV-KIITOS-13`: `LESMEG.md` i laugroten skal være den synlige navigasjonshjelpen for brukere som vil starte fra begynnelsen igjen eller velge riktig inngang etter hensikt.
- `DV-KIITOS-14`: `LESMEG.md` skal som minimum tilby tre tydelige veier videre: rask intro, grundig operativ forståelse og oppsett eller viderebygging.
- `DV-KIITOS-15`: Når lauget mangler en kort introflate for rask forståelse, skal en slik opprettes i aktiv guideflate i stedet for å sende brukeren til historikk eller analyse som første korte rute.
- `DV-KIITOS-16`: KI-ruting skal være separat og tynn. `.github/copilot-instructions.md` og `AGENTS.md` er KI-rutingsfiler og skal peke direkte til `velkommen.md`, slik at menneskevendt `README.md` og `LESMEG.md` kan bruke mykere og mer gradvis språk uten å sinke KI-rutingen.
- `DV-KIITOS-17`: Operative eierfiler som både bærer delbar arbeidsmåte og lokal sannhet skal deles i identisk delt kjerne og lokal wrapper når kjernen er stabil, selvstendig lesbar og faktisk gjenbrukes på tvers av laug. Lokal wrapper skal da eie konkrete lokale steg, lokale maskiner, lokale modulregler og annen laugspesifikk sannhet.
- `DV-KIITOS-18`: Operative instruksfiler skal være raskt oppslagsbare. En leser skal ved kort skumlesing kunne finne formål, nivå, kanonisk eier, eventuelle lokale tillegg eller avvik og tydelig neste peker uten å lese hele filkjeden først. Dette konkretiserer `DV-KIITOS-07`, `DV-KIITOS-08` og `DV-KIITOS-09` for aktiv bruk, og gjelder også når `DV-KIITOS-17` brukes med delt kjerne og lokal wrapper.
- `DV-KIITOS-19`: I delte interne laugfiler brukes fornavn når navn er nødvendig for kontaktpunkter, ansvar eller faste rutiner. Fullt navn og andre personopplysninger skal unngås når de ikke trengs for arbeidsformen.

## Kodekartlegging fra gen4

Følgende tabell viser sammenhengen mellom gamle `DV-LOK-ARB`-koder (fra arbeidsromsnivå i gen4) og nye `DV-KIITOS`-koder:

| Gen4 | Gen5 |
|---|---|
| DV-LOK-ARB-01 | DV-KIITOS-01 |
| DV-LOK-ARB-04 | DV-KIITOS-02 |
| DV-LOK-ARB-05 | DV-KIITOS-03 |
| DV-LOK-ARB-06 | DV-KIITOS-04 |
| DV-LOK-ARB-07 | DV-KIITOS-05 |
| DV-LOK-ARB-08 | DV-KIITOS-06 |
| DV-LOK-ARB-09 | DV-KIITOS-07 |
| DV-LOK-ARB-10 | DV-KIITOS-08 |
| DV-LOK-ARB-11 | DV-KIITOS-09 |
| DV-LOK-ARB-14 | DV-KIITOS-10 |
| DV-LOK-ARB-15 | DV-KIITOS-11 |
| DV-LOK-ARB-16 | DV-KIITOS-12 |
| DV-LOK-ARB-17 | DV-KIITOS-13 |
| DV-LOK-ARB-18 | DV-KIITOS-14 |
| DV-LOK-ARB-19 | DV-KIITOS-15 |
| DV-LOK-ARB-20 | DV-KIITOS-16 |
| DV-LOK-ARB-21 | DV-KIITOS-17 |
| DV-LOK-ARB-22 | DV-KIITOS-18 |
| DV-LOK-ARB-23 | DV-KIITOS-19 |

## Utgått

*(Utgåtte oppføringer flyttes hit – slettes ikke.)*
