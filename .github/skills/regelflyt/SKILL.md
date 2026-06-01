---
name: regelflyt
description: "Brukes når en regel skal flyttes mellom personlig og delt nivå: senk en delt regel til personlig pref-fil, eller løft et personlig valg til fyr, laug eller prosjekt."
---

# Regelflyt

Denne maskinen er en **aktiveringswrapper** med to retninger.

Kanonisk beslutningsmatrise ligger i `guide/preferanser.md`.

## Retning: Senk (delt → personlig)

Aktiveres med `/maskin regelflyt senk` eller `/maskin personvalg`.

1. Identifiser den delte regelen og hvor den står i dag.
2. Vurder om regelen faktisk er personlig arbeidsstil eller utviklerspesifikk preferanse, og ikke delt teknisk sannhet.
3. Hvis `.github/copilot-kiitos-pref.md` mangler, bootstrap den fra `.github/copilot-kiitos-pref-mal.md` før du går videre.
4. Foreslå hvordan den delte regelen skal generaliseres når den konkrete preferansen trekkes ut.
5. Skriv det konkrete valget til `.github/copilot-kiitos-pref.md` og gjør den delte regelen generell nok til å kunne deles.

## Retning: Løft (personlig → delt)

Aktiveres med `/maskin regelflyt løft` eller `/maskin fellesregel`.

1. Identifiser den personlige regelen i `.github/copilot-kiitos-pref.md` eller annen lokal kontekst.
2. Vurder om regelen er gjenbrukbar utover én utvikler.
3. Finn riktig mållag:
   - `guide/` når regelen gjelder delbar KI-arbeidsmåte; i denne modellen kan slike guider være fysisk hostet i lauget selv om de er universdelte
   - fyrroten når regelen gjelder universankre som `README.md`, `journal/` eller annen tverrlaug styring utenfor laugroten
   - laugroten når regelen gjelder denne benken på tvers av prosjekter
   - prosjektets lokale `.kiitos/` når regelen egentlig er prosjektpraksis
4. Skriv regelen til riktig delt mål.
5. Fjern eller reduser den personlige overstyringen slik at lokalfilen bare beholder det som faktisk er personlig.

## Avklaringsspørsmål

Still kort avklaringsspørsmål hvis ett av disse punktene er uklart:

- Er dette personsmak eller lokal arbeidsform, eller er det egentlig en delt arbeidsregel?
- Gjelder dette flere utviklere, eller bare dagens bruker?
- Er dette universnivå, laugfakta eller prosjektpraksis?
- Hvilket konkret dokument er riktig sannhetskilde etter endringen?

## Begrensninger

Maskinen skal ikke brukes til å svekke:

- API- og databasekontrakter
- sikkerhetsregler
- prosjektpraksis som flere utviklere er avhengige av
- laugfelles teknisk kunnskap

Maskinen skal være tilbakeholden med å gjøre ren personsmak til felles regel uten eksplisitt brukerønske.

## Kanoniske referanser

- `guide/preferanser.md`
