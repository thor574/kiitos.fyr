# Effektiv samhandling med KI (hurtigguide)

Formål: få raskere og mer presise leveranser med minst mulig frem og tilbake.

På tvers av søster-workspace brukes samme grunnmønster: start i `velkommen.md` direkte eller via rotens `AGENTS.md` eller `.github/copilot-instructions.md`, og les deretter de relevante lagene i `guide/`, ellers i arbeidsromsroten og i prosjektets lokale `.kiitos/` for saken.

## 1. Start saker med riktig ramme

Bruk denne minimalmalen når du starter en oppgave:

```text
Mål: [hva som skal være sant når vi er ferdige]
Omfang: [hvilke mapper/filer som er innenfor]
Ikke gjør: [hva som ikke skal røres]
Verifisering: [hvordan vi sjekker at det virker]
```

Dette reduserer avklaringsrunder og gjør at jeg kan gå rett på implementering.

## 2. Velg tempo med én setning

- Høyt tempo: «Kjør ende-til-ende uten avklaringer med mindre blokkert.»
- Kontrollert tempo: «Foreslå først, vent på godkjenning før du endrer filer.»
- Hybrid: «Gjør åpenbare endringer direkte, spør ved arkitekturvalg.»

### Grundig løp

Bruk signalordet «Grundig løp» når saken er stor, risikofylt eller uklar.

- `Ask`: vi bruker dialog til å lande en grov plan.
- `Plan`: jeg lager detaljplan først når grovplanen er bekreftet.
- Implementasjon: starter først når du eksplisitt sier «Start implementasjon».

Jeg kan også foreslå `grundig løp` selv ved komplisert refaktorering, komplisert feilretting, større nybygg eller endringer med store ringvirkninger. Jeg skal da vente på eksplisitt bekreftelse før vi bytter løp.

### Strukturell høvling

Bruk «strukturell høvling» når oppgaven er en bred, systematisk gjennomgang av struktur, terminologi, navngiving eller konvensjoner — ikke funksjonell kodeendring.

Kjennetegn:
- Endringer berører mange filer men få logiske konsepter
- Målet er konsistens, ikke ny funksjonalitet
- Risikoen er inkonsekvens, ikke feil logikk

Før du starter selve høvlingen, ta gjerne en kort analyseøkt. Se etter mønstre som går igjen, elementer som bør beholdes sammen, og variasjoner som bare er historiske. Kort analyse tidlig kan spare mye omarbeid senere.

Anbefalt løp:
1. Kartlegg alle forekomster av det som skal endres
2. Lag en fysisk plan (omdøpinger først, tekst etterpå)
3. Kjør i batcher, verifiser hver batch
4. Grep-sjekk at ingen rester gjenstår

Regel: ikke bland strukturell høvling med funksjonsarbeid i samme sats.

### Ask-Plan-Agent

Et arbeidsmønster for større oppgaver der riktig rekkefølge er viktigere enn rask start.

- **Ask:** Dialogrunder for å avklare krav, utforske løsningsrom og forankre retning
- **Plan:** Detaljert, verifiserbar plan lages med en presis modell når retningen er bekreftet
- **Agent:** Planen utføres med en effektiv modell som følger planen steg for steg

Personlige modellvalg for hvert steg kan settes i `.github/copilot-kiitos-pref.md`.

## 3. Be om riktig svarform

- «Kort svar, kun endringer og status.»
- «Vis kun funn i prioritert rekkefølge.»
- «Gi meg kommandoene jeg skal kjøre lokalt.»

Når du setter formatet tidlig, blir svarene mer nyttige med en gang.

## 4. Avgrens søkeflaten med én setning

- «Søk i aktive instrukser, utelat journal og historikk.»
- «Søk bare i styringsgrunnlag og spesifikasjoner for `k2webapi`.»
- «Søk i nylige vurderinger, men ikke i full journalhistorikk.»
- «Søk i historikken for denne saken.»

Standard utelatelser når du ikke ber om historikk:

- `journal/**`
- `journal/**`
- `**/.kiitos/journal/**`
- `oppgaver/**`
- `oppgaver.mine/**`

Dette gjør at jeg starter i riktig kunnskapsflate i stedet for å blande aktiv styring, parkerte oppgaver og historiske dialogspor.

## 5. Bruk disse triggerne når du vil styre kvalitet

- «Kontraktvern»: ikke bryt API/DB-felter uten avklaring.
- «Innrykksvern»: bevar eksisterende innrykk og nærliggende whitespace ved redigering, og sjekk nye linjer mot nærmeste naboblokk før du avslutter.
- «Scope discipline»: parker delbare sidefunn i `oppgaver/` og brukerprivate eller maskinlokale sidefunn i `oppgaver.mine/`.
- «KR og ERIH likt»: vurder parallelle endringer i begge løp.
- «Lokalt først»: prioriter rask lokal verifisering før treg testserverflyt.
- «Lokale feilsøk-hint»: bruk lokale feilsøk-hint og nærliggende diagnostikk når det sparer tid.

## 6. Eksempler du kan lime inn

- «Implementer dette nå. Hold deg til `k1`. Ingen utvidelse til andre prosjekter.»
- «Finn rotårsak først, foreslå minst mulig patch, implementer deretter.»
- «Gjør en review: kun bugs, regresjonsrisiko og manglende tester.»
- «Lag meg en kort plan med 3 steg, så utfør steg 1 med en gang.»
- «Bruk grundig løp: vi tar grov plan i Ask, detaljplan i Plan, og implementering først når jeg sier start.»
- «Start en evaluering av [prosjekt/komponent] med Bastøes rammeverk fra `guide/evalueringsrammeverk.md`»

## 7. Når du vil ha jevnlige hint

Skriv for eksempel:

- «Minn meg på denne guiden hvis jeg gir for brede eller uklare oppgaver.»
- «Hint meg om hurtigguiden når du ser at vi kan spare tid.»

Da bruker jeg guiden aktivt som støtte i dialogen.

## 8. Mini-rubric for nye agenter

Bruk denne enkle rubricen når vi vurderer om en gjentakende belastning bør få en egen agentrolle.

### Når noe heller bør forbli maskin eller guide

La det forbli maskin, wrapper eller guide når arbeidet hovedsakelig er:

- en fast oppskrift med tydelig rekkefølge
- en prosess med eksplisitte brukeravklaringer
- en plassering- eller regelmatrise
- en sjekkliste som håndhever korrekt form eller format

Tommelfingerregel:
Hvis verdien ligger mest i å følge riktig oppskrift, er det sannsynligvis ikke en agent.

### Når noe er en god agentkandidat

Vurder agent når arbeidet hovedsakelig er:

- gjentatt kartlegging eller søk i mange filer eller lag
- valg av riktig prosjekt, instruksflate eller startpunkt
- sammenstilling av flere mulige spor til én anbefalt retning
- smal, delegérbar vurdering som review, triage eller speiding

Tommelfingerregel:
Hvis verdien ligger mest i å avlaste hovedagenten for utforskning, sortering og valg, er det en god agentkandidat.

### Enkel observasjonsrubric

Når du har gjort en sats og lurer på om den peker mot en ny agent, vurder kort disse punktene:

1. Gikk mesteparten av tiden til lesing, søk og kartlegging?
2. Ble samme type orienteringsarbeid gjentatt flere ganger i samme sats?
3. Kunne denne delen vært delegert uten å eie selve implementeringen?
4. Er oppgaven smal nok til å gi en tydelig rolle og et tydelig svarformat?
5. Finnes det allerede en maskin eller guide som dekker behovet bedre?

Praktisk bruk:

- 4 eller 5 ja-svar: sterk agentkandidat
- 2 eller 3 ja-svar: parker som mulig agentbehov og observer videre
- 0 eller 1 ja-svar: behold som guide, maskin eller vanlig hovedagentarbeid

Når en relevant agent allerede finnes:

- start den som hovedregel uten å vente på eksplisitt brukerkommando
- bruk agenten bare for den smale deloppgaven den er laget for
- si kort fra til brukeren at agenten brukes og hvorfor
- fortsett deretter hovedsaken med agentresultatet som støtte

### Kort arbeidsnotat ved agentvurdering

Når du parkerer eller analyserer agentbehov, noter kort:

- hva tiden faktisk gikk til
- hva som ble repetitivt
- hva som krevde skjønn versus fast oppskrift
- om behovet er lokalt, arbeidsromfelles eller tverrprosjektlig

Dette er nok til å gjøre senere agentvurderinger mer systematiske uten å innføre tung måling.
