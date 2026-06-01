---
name: verktoy
description: "Brukes når vi skal kartlegge, standardisere, installere eller verifisere terminalverktøy (Scoop, pipx, alias, helsesjekk og anbefalt verktøyliste)."
---

# Verktøyhåndtering

Denne maskinen er en aktiveringswrapper for strukturert håndtering av terminalverktøy.

Når bruker skriver /maskin verktøy, bruk følgende prioritering:

1. Les kanonisk verktøydokumentasjon i:
- guide/ki-verktoy-og-oppsett.md

2. Følg velkommen-rammen i:
- velkommen.md

3. Bruk oppgitt oppstartslinje for tilgjengelige verktøy direkte:
- Verktøy tilgjengelig i terminal: ...

## Arbeidsflyt

1. Bekreft hvilke verktøy som er oppgitt som tilgjengelige.
2. Prioriter oppgitte verktøy uten unødvendig probing.
3. Ved manglende verktøy: bruk fallback og si tydelig fra.
4. Ved behov for nye verktøy: foreslå konkret installasjon og be om avklaring før det gjøres til standard.
5. Oppdater installer-dokumentasjonen når standardlisten endres.

## Typiske oppgaver

- Lage eller oppdatere standard verktøyliste
- Legge til helsesjekk for verktøy
- Foreslå installasjonskommandoer med Scoop
- Avklare alias og kommandonavn (for eksempel difftastic/difft)
- Dokumentere fallback-regler

Hvis det oppstår konflikt mellom denne filen og førende lauginstrukser, er de operative `.github`-filene førende.
