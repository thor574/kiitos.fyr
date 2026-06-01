# Terminologi (felles fagspråk)

Dette dokumentet beskriver universelle terminologiprinsipper for kiitos-arbeidsrom.
Målet er konsistente begreper på tvers av prosjekter, lag og systemer.

## Prinsipp

- Bruk **norske domenebegreper** i domenemodell (typer/klasser/felt) og i faglig rettet dokumentasjon.
- Tillat engelsk der det er etablert.
- Unngå store navneendringer i eksisterende kode (omdøpingskampanjer) når dette gir høy friksjon og stor endringsflate.
- Bruk norsk der det kan gjøres lokalt og trygt (lav risiko / høy gevinst), spesielt i ny kode eller når et område uansett refaktoreres.
- Ikke bryt eksterne kontrakter (API/DB) uten eksplisitt avklaring.
- Ved endringer i API/utside: bruk **oversettingslag** (DTO → domenemodell) for å kunne standardisere begreper internt uten å brekke eksisterende integrasjoner.

## Ordlister

Ordlister og arbeidsprosess for å foreslå, vedta og implementere termer ligger i [termer.md](termer.md).

## Norsk språk

- Når vi skriver norsk (dokumentasjon, journal, beskrivelser i PR), unngå norsk-engelske blandingsord.
- Bruk norske avløserord der det er naturlig (omdøping, skisse, lokallager).
- Behold korrekt norsk rettskrivning i norsk tekst. KI skal ikke ASCII-normalisere norske ord ved å erstatte `æ`, `ø` eller `å` med `ae`, `oe` eller `aa`.

## Arbeidsromsspesifikke tillegg

Arbeidsrom kan ha egne navnekonvensjoner og migreringsstrategier i sin `guide/terminologi.md`.

## Verktøy: /maskin termer

Når engelske ord sniker seg inn, eller når du vil diskutere/formalisere ordbruk: aktivér maskinen `/maskin termer` for den strukturerte prosessen.