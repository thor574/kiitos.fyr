# Personlige innstillinger og delte preferanseregler

Denne guiden forklarer hvordan kiitos skiller mellom delbar grunninformasjon og utviklerspesifikke valg.
Personlige preferanser skal ikke lenger ligge som innsjekket fasit i denne filen.

## Hurtiglenker

- Praktisk arbeidsflyt: [effektiv-samhandling-med-ki.md](effektiv-samhandling-med-ki.md)
- Oppgaveparkering: [oppgave-parkering.md](oppgave-parkering.md)

## Filer og ansvar

- `.github/copilot-kiitos-pref-mal.md` er innsjekket mal for personlige valg.
- `.github/copilot-kiitos-pref.md` er utviklerens lokale kiitos-pref og skal være ignorert av Git.
- `copilot-pref.md` er en valgfri lokal Copilot-pref som kan eksistere ved siden av når brukeren allerede bruker en slik fil utenfor kiitos-modellen.
- `guide/preferanser.md` er den delte beslutningsmatrisen for hva som er personlig og hva som skal løftes til felles lag.

## Oppstart og bootstrap

- `velkommen.md` i arbeidsromsroten eier bootstraprekkefølgen for den private pref-fila.
- Denne guiden beskriver hva som hører hjemme i preferanselagene, ikke oppstartsstegene i detalj.
- Når `.github/copilot-kiitos-pref.md` mangler, følg bootstrapen i `velkommen.md` og kom tilbake hit for grensedragningen mellom personlig og delt stoff.

## Hva hører hjemme hvor

- Personlig arbeidsstil, foretrukket svarform, IDE-kontekst og andre utviklerspesifikke valg for kiitos i dette arbeidsrommet: `.github/copilot-kiitos-pref.md`
- Lokal verktøytilgjengelighet og mangler som KI bør ta hensyn til, for eksempel at `rg` finnes lokalt eller at Docker mangler: `.github/copilot-kiitos-pref.md`
- Foretrukket journalføringsstart i introperioden, for eksempel `Privat mappe` eller `Fordelt utover i kiitos-lagene`: `.github/copilot-kiitos-pref.md`
- Brukerprivate eller maskinlokale oppgaver som ikke skal deles: `oppgaver.mine/`
- Valgfri generell Copilot-pref som brukeren vil holde ved siden av kiitos: `copilot-pref.md`
- Delte KI-arbeidsmåter som skal kunne gjenbrukes på tvers av arbeidsrom: `guide/`
- Arbeidsromfelles kunnskap, tverrprosjektregler, pekere og styringsgrunnlag: `guide/`, `styringsgrunnlag/`, `spesifikasjoner/`, `oppgaver/` og `journal/`
- Prosjektpraksis, prosjektkontrakter og prosjektnære huskeregler: prosjektets lokale `.kiitos/`

## Hva som ikke skal lagres i den private innstillingsfila

- API- og databasekontrakter
- Delte sikkerhetsregler og kvalitetskrav
- Arbeidsromfelles fakta om systemene
- Større brukerprivate oppgaver som bør ligge som egne filer i `oppgaver.mine/`
- Prosjektspesifikke regler som flere utviklere må kunne gjenbruke
- Passord, tokens, hemmeligheter eller andre sensitive lokale verdier

## Overstyring

- Den private kiitos-prefen kan presisere personlig arbeidsstil og lokale preferanser.
- Den private kiitos-prefen kan også styre modulbruken for `guide/` med verdiene `på`, `ved behov` og `av`.
- Den kan ikke oppheve delte kontraktregler, sikkerhetskrav eller tekniske sannheter.
- Når en delt regel viser seg å være personsmak eller lokal arbeidsform, splittes den med `/maskin regelflyt senk`.
- Når et personlig valg viser seg å være gjenbrukbart, løftes det med `/maskin regelflyt løft`.

## Modulstyring av delte guider

- `guide/preferanser.md` beskriver modellen og styres ikke selv som av/på-modul.
- `guide/evalueringsrammeverk.md` kan styres med `på`, `ved behov` eller `av` for evalueringsmodulen
- `på` betyr at KI skal bruke modulen som standard når saken treffer den.
- `ved behov` betyr at KI skal lese modulen bare når saken tydelig trenger den.
- `av` betyr at KI ikke skal lese modulen uten eksplisitt beskjed fra bruker eller fra en mer spesifikk aktiv instruksfil.
- Hvis en modul mangler i pref-fila, behandles den som `ved behov`.
- Brukerbeskjed i den aktive samtalen overstyrer modulvalget for den samtalen, men ikke delte kontraktregler, sikkerhetskrav eller tekniske sannheter.

## Delte arbeidsmåter som ikke er personlige

- Søkeflater og standardutelatelser hører til i `velkommen.md` og [effektiv-samhandling-med-ki.md](effektiv-samhandling-med-ki.md).
- Scope discipline og parkering av sidefunn hører til i [oppgave-parkering.md](oppgave-parkering.md).
- Journalformat og avslutningsopprydding hører til i `guide/journal-system.md`.

## Maskiner

- `/maskin regelflyt senk` brukes når en delt retningslinje bør gjøres om til et personlig valg.
- `/maskin regelflyt løft` brukes når et personlig valg bør løftes til `guide/`, arbeidsromsroten eller prosjekt.

## Språk i første versjon

- Kiitos holdes kanonisk på norsk i denne modellen.
- Språkvalg ligger i reserve som senere utvidelse, men er ikke aktiv personlig bryter i første versjon.

## Vedlikehold

- Hold malen generell nok til at flere utviklere kan bruke den.
- Hold den lokale filen kort og konkret.
- Flytt ikke delte regler til privat fil bare fordi de ble oppdaget i én samtale.
- Når gammel, innsjekket preferanseinformasjon viser seg å være felles sannhet, løft den videre til riktig delt mål i stedet for å la den bli liggende her.
