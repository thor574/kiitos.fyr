---
name: utforsk
description: "Brukes når en utvikler vil utforske en kiitos-modul i én samtale uten å forplikte seg: vis oversikt, aktiver midlertidig og spør etterpå om modulen skal slås på, settes til ved behov eller forbli av."
---

# Utforsk en kiitos-modul

Denne maskinen lar utvikleren smake på en delt modul fra `guide/` uten å endre pref-fila permanent.

## Bruk

- `/maskin utforsk` – uten argument: list alle tilgjengelige moduler med kort beskrivelse og nåværende status.
- `/maskin utforsk <modulnavn>` – med argument: utforsk den angitte modulen i denne samtalen.

- Modulnavnet kan gis med eller uten `.md`-endelse og med eller uten `guide/`-prefiks.

## Når ingen modul er angitt

1. Skann `guide/` dynamisk for tilgjengelige modulfiler.
2. Utelat `preferanser.md` (kjernemodell, alltid aktiv) og `installasjon.md` (engangsoppsett).
3. For hver modul, vis:
   - Modulnavn (uten sti og endelse)
   - Kort beskrivelse (les første meningsgivende avsnitt fra fila)
   - Nåværende status i utviklerens pref-fil (`på`, `ved behov`, `av` eller `ikke satt`)
4. Vis som oversiktlig tabell eller liste.
5. Avslutt med et tips: «Skriv `/maskin utforsk <modulnavn>` for å utforske en modul i denne samtalen.»

## Når en modul er angitt

1. Les den angitte modulfila fra `guide/`.
2. Gi en **30-sekunders oversikt** i tre deler:
   - **Hva den gjør**: én til to setninger om modulens formål.
   - **Hva den styrer**: stikkordliste over de viktigste reglene eller arbeidsmåtene modulen inneholder.
   - **Når den slår inn**: kort om hvilke situasjoner KI vil bruke modulen aktivt.
3. Spør utvikleren: «Vil du utforske denne modulen nå i resten av samtalen?»
4. Hvis ja:
   - Merk modulen som **midlertidig aktiv** for denne samtalen.
   - KI skal bruke modulens regler som om den var satt til `på` i pref-fila, men bare i denne samtalen.
   - Informer kort: «Modulen er aktiv for denne samtalen. Pref-fila er ikke endret.»
5. Hvis nei: avslutt uten endring.

## Ved avslutning av samtalen

Når samtalen nærmer seg slutten og en modul har vært midlertidig aktiv, spør:

> Du har brukt modulen `<modulnavn>` i denne samtalen. Vil du oppdatere pref-fila?
> - `på` – alltid aktiv når saken treffer
> - `ved behov` – bare når saken tydelig trenger den
> - `av` – forbli av (du kan utforske igjen senere)

Hvis utvikleren velger `på` eller `ved behov`, oppdater `.github/copilot-kiitos-pref.md` med det nye valget.
Hvis utvikleren velger `av` eller ikke svarer, la pref-fila stå uendret.

## Viktige regler

- Ikke endre pref-fila uten eksplisitt bekreftelse fra utvikleren.
- Midlertidig aktivering gjelder bare den aktive samtalen.
- Moduler som allerede er `på` kan fortsatt utforskes – vis da innholdet og bekreft at den allerede er aktiv.
- Hvis modulen ikke finnes i `guide/`, gi en tydelig feilmelding og list tilgjengelige moduler.
