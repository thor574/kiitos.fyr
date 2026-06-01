---
name: innsiktslofter
description: "Brukes for å bearbeide journalinnlegg til egne innsikter og foreslå løft til styringsgrunnlag, guide eller oppgaver."
---

# Innsiktsløfter — fra råkunnskap til egne innsikter

## Formål

Bearbeide journalinnlegg og observasjoner til innsikter uttrykt i brukerens egne ord, og foreslå hvor de bør plasseres i kiitos-flaten.

Maskinen produserer:

1. En liste over kandidater fra angitt journalperiode som fortjener å løftes.
2. For hver kandidat: en kort innsikt formulert i brukerens egne begreper.
3. Forslag til plassering (styringsgrunnlag, guide, oppgave) med begrunnelse.

## Når bruke

Bruk når du:

- har jobbet intensivt en periode og vil destillere hva du faktisk lærte
- mistenker at journalen inneholder beslutninger som burde stå i styringsgrunnlaget
- vil skille mellom «hva som skjedde» og «hva du mener om det»

## Arbeidsflyt

### Steg 1: Avgrens input

Motta input fra brukeren:

- En spesifikk journalperiode (f.eks. «siste uke», «mai 2026»)
- En enkelt fil eller et sett med filer
- Eller «siste uke» som standard hvis ingenting er angitt

### Steg 2: Les materialet

1. Les alle journalinnlegg i den angitte perioden.
2. Identifiser observasjoner, lærdommer, beslutninger og mønstre som gjentar seg.

### Steg 3: Identifiser kandidater

For hvert potensielt løft, vurder:

1. Er dette en **engangsobservasjon** eller et **mønster** som gjentar seg?
2. Er det en **beslutning** som bør være styrende fremover?
3. Er det en **arbeidsmåte** som bør dokumenteres i en guide?
4. Er det en **åpen oppgave** som bør formaliseres?

Filtrer bort trivielle observasjoner som ikke har verdi utover sin kontekst.

### Steg 4: Formuler innsikter

For hver kandidat, skriv:

- **Observasjon** — hva som skjedde, i kort form
- **Innsikt** — hva dette betyr, i brukerens egne begreper (ikke KI-generert prosa)
- **Kilde** — filreferanse til journalinnlegget
- **Foreslått plassering** — styringsgrunnlag, guide, oppgave, eller «ingen handling»
- **Begrunnelse** — hvorfor akkurat denne plasseringen

### Steg 5: Godkjenning

Presenter alle kandidater samlet. Be brukeren godkjenne, justere eller avvise hver enkelt. Aldri flytt noe uten eksplisitt bekreftelse.

### Steg 6: Utfør godkjente løft

1. Oppdater eller opprett filer i henhold til godkjente forslag.
2. Følg kiitos' plasseringsregler og formatkonvensjoner.
3. La original journaltekst stå uendret (append-only).

## Kvalitetskrav

- Aldri flytt eller endre noe uten eksplisitt godkjenning fra brukeren.
- Bevarer original journaltekst uendret (append-only-prinsippet).
- Innsikten skal være i brukerens egne begreper — ikke generisk KI-prosa.
- Følg kiitos' plasseringsregler (fyr/laug/ruff/prosjekt) for alle forslag.
- Skille tydelig mellom «hva kilden/situasjonen sa» og «hva brukeren mener om det».
