# Kiitos — milepæler

Denne fila gir et kort bilde av de viktigste generasjonsskiftene i kiitos. En ny generasjon markeres når arkitekturen eller måten kiitos brukes med KI-verktøy på endres vesentlig — ikke for hver vanlig forbedring.

## Gen6 — 14. august 2026

Gen6 er en integritetsjustering av gen5 og en tilpasning til arbeid med flere KI-verktøy, særlig ChatGPT/Codex og GitHub Copilot.

Gen6-harmoniseringen ble gjennomført i den nye ChatGPT-appen av **ChatGPT 5.6 Sol** med resonneringsnivået **Ekstra høy**. Arbeidet tok litt over fire timer og brukte omtrent en halv ukekapasitet. På dette tidspunktet viste ChatGPT forbruket mindre tydelig som KI-kreditter (kik) enn Copilot og Cursor. Derfor er både tids- og kapasitetsbruken tatt med som en del av milepælen.

Dette bringer gen6:

- samme kanoniske kunnskap brukes gjennom verktøytilpassede innganger, i stedet for at hvert KI-verktøy får sin egen konkurrerende sannhet;
- prosjektinstruksene er harmonisert rundt nærmeste `.kiitos/prosjektinstruks.md`, med tynne `AGENTS.md`-portaler for verktøy som bruker dem;
- Copilot får ett arbeidsromsspesifikt, lokalt kompilat bygget fra fyr, personlig ruff og aktivt laug;
- kompilatoren kontrollerer kilder, stier og lenker, og det delte lauget hardkoder ikke én brukers personlige ruff;
- relative stier og en enkel `kiitos.bat` gjør oppsettet mer flyttbart og lettere å kontrollere;
- gamle og parallelle instruksflater er ryddet bort slik at eierskap, personvern og konfliktregler blir tydeligere.

Gen6 innfører ikke et nytt kunnskapslag. Det gjør gen5-modellen mer robust når de samme prosjektene brukes fra ulike KI-verktøy.

## Gen5 — 25.–26. mai 2026

Gen5 gjorde kiitos egnet for bruk sammen med kollegaer. Migreringen ble fullført 25. mai, og navnene **fyr**, **laug** og **ruff** ble fastsatt 26. mai.

Dette brakte gen5:

- et universelt fyr for delte prinsipper, guider og arbeidsmåter;
- laug for team-, arbeidsroms- og fagområdespesifikk kunnskap;
- personlig ruff for preferanser, rollegrenser og private arbeidsflater;
- prosjektlokal `.kiitos/` for fakta og instrukser nærmest mulig kode og sak;
- tydeligere skille mellom delt og personlig innhold, med journal og skills på riktig nivå;
- en modell kollegaer kunne ta i bruk uten å arve én persons samlede instruksbank.

Gen5 var overgangen fra en monolittisk instruksbank til et lagdelt og delbart KI-instruksrammeverk.

## Videre lesning

- [Fra gen2/3 til gen5](analyse/2026-06-02%20gen2-3-til-gen5.md) — grundig analyse av hva som ble vunnet, flyttet og svekket.
- [Gen5-migrering fullført](journal/2026-05/2026-05-25%20gen5-migrering-fullfort.md) — teknisk milepæl og migreringshistorikk.
- [Navneendring til fyr, laug og ruff](journal/2026-05/2026-05-26%20navneendring-fyr-laug-ruff.md) — bakgrunnen for lagbegrepene.
