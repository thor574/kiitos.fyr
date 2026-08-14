<!-- KIITOS-KOMPILAT: GENERERT FIL. IKKE REDIGER MANUELT. -->
# Copilot-instrukser — {{WORKSPACE}}

Dette er den eneste aktive `.github/copilot-instructions.md`-fila for dette VS Code-arbeidsrommet. Den er arbeidsromsspesifikk, uavhengig av VS Code-profilen og generert fra versjonerte Kiitos-kilder.

## Kilde- og konfliktregel

- Systemkrav, sikkerhetsgrenser, kildefakta, tekniske kontrakter og uttrykkelige prosjektgrenser kan ikke overstyres av preferanser.
- Finn og les nærmeste `.kiitos/prosjektinstruks.md` for den aktive saken. Den eier prosjektspesifikke fakta og grenser.
- Når personlig ruff og laug uttrykker ulike preferanser for arbeidsstil, har ruff forrang.
- Laug eier arbeidsromsspesifikke regler og fakta. Fyr eier universelle regler.
- Kildene under er kopiert inn for robust oppstart. Endre eierfilen og kjør kompileringen på nytt; ikke rediger denne fila.
- Relative Markdown-lenker er skrevet om slik at de fortsatt peker til eierfilenes faktiske mål fra dette lokale kompilatet.

## Oppdatering

Kjør kompilatorskriptet fra laugets arbeidsromsrot, og gi stien til laugets `kiitos-kompilat.json`. Kontroller gjerne først med `-Check`. Eksempel når fyret og lauget ligger side ved side: `& ..\kiitos.fyr\scripts\kompiler-kiitos.ps1 -ManifestPath .\kiitos-kompilat.json`.
