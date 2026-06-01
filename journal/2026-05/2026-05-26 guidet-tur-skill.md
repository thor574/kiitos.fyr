# KI-instruks 1
> For universell kiitos:  Lag en valgfri guidet tur for nye brukere av kiitos, der du stiller en del spørsmål til dem så de får laget sin personlige profil, i sitt private arbeidsprosjekt.  Guide dem så de lager en mappe for det, og legger den til i workspace med 'Add folder to workspace' i vsc.  Spør dem så om en del tema, som de kan hoppe over etter ønske, og der de kan legge til info, så du vet mer om deres situasjon.  Vurder tema, så samarbeidet mellom dere to blir bra.  Gjør dette ende-til-ende til fullført.  Journalfør så med alle standardvalg.

Opprettet ny skill `guidet-tur` i `kiitos/.github/skills/guidet-tur/SKILL.md`.

Skillen guider nye brukere gjennom 13 steg:
1. Velkommen med personvernforklaring
2. Velg plassering og navn (relativ sti, `kiitos.pro.<initialer>`)
3. Opprett mappestruktur (fra maler)
4. Legg til i VS Code workspace
5. Kommunikasjonsstil (samtaleform, svarstil, detaljeringsnivå)
6. Kanarifugl-linje
7. Påmønstringsmodus (stille/utforskende/standard)
8. Arbeidsform (endringskontroll, IDE)
9. Bakgrunn og interesser (helt valgfritt)
10. Mål med kiitos
11. Skriv pref-fil fra svarene
12. Oppdater velkommen.md
13. Oppsummering med neste steg

Kjørte skillen som demonstrasjon og mottok tilbakemelding underveis.



# KI-instruks 2
> Installasjonsveiledningen skal være sti-relativ. Den kan legge det nye prosjektmappen hos forelderen til arbeidsromsmappen, dvs. i mappen ".."

Oppdaterte steg 2 til å bruke relative stier (søskennivå til kiitos-mappen) i stedet for absolutte stier.



# KI-instruks 3
> Dropp dette valget [Endringsomfang], det var aktuelt for lenge siden.

Fjernet «Endringsomfang» fra steg 8 og fra standardverdiene i steg 11. Beholdt bare «Endringskontroll» og «Primær IDE» i arbeidsformseksjonen.



# KI-instruks 4
> I introen kan en gjerne tydeliggjøre mer at data en skriver inn ikke blir delt. Det blir liggende på lokal harddisk i en annen mappe enn det som deles.

Oppdaterte steg 1 (Velkommen) med eksplisitt personvernsetning:
> Alt du skriver inn her lagres bare lokalt på din egen maskin, i en egen mappe som ikke deles med andre. Det er kun du og din KI-assistent som ser det.
