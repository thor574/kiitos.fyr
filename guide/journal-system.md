# Journal-system for univers, arbeidsrom og prosjekt

Denne guiden beskriver hvordan saker journalføres på riktig nivå og med riktig synlighet i kiitos-modellen.

## Grunnregel

Journalføring skal bevare beslutninger, endringer og læring uten å gjøre samtalen til et offentlig arkiv.

Før KI skriver en journalpost, skal den klassifisere både:

1. **Lag:** fyr, laug, ruff eller prosjekt.
2. **Synlighet:** offentlig, delt/internt eller privat.

Lag og synlighet er to forskjellige vurderinger. En sak kan være universell uten at alle detaljene i samtalen kan publiseres.

## Synlighetsnivå

| Synlighet | Journalform | Typisk innhold |
|---|---|---|
| Offentlig | Sanitert og destillert saksjournal | Formål, beslutninger, endringer, verifikasjon og offentlige kilder |
| Delt/internt | Målgruppetilpasset saksjournal | Det teamet trenger, med minst mulig person- og tilgangsdetaljer |
| Privat | Privat saksjournal eller dialogjournal | Kan inneholde ordrett dialog når det er nyttig og brukeren har godkjent det |

`kiitos.fyr` er offentlig. Journalen her skal derfor aldri være en automatisk kopi av samtalen.

## Dette skal ikke publiseres

- passord, nøkler, tokens, sesjonsdata eller andre autentiseringsopplysninger
- private tilgangsavtaler, kontobytter eller detaljert feilsøking av innlogging og rettigheter
- e-postadresser, telefonnumre, adresser eller andre unødige personidentifikatorer
- helseopplysninger, familieforhold, privatøkonomi, relasjoner eller personvurderinger
- ikke-offentlig sikkerhets-, system- eller organisasjonsinformasjon
- fullstendige råutskrifter av samtaler

Bevisst offentlige identifikatorer, som navnet på et offentlig GitHub-repo eller dets offentlige eierkonto, kan brukes når de er nødvendige for å forstå saken. De er ikke det samme som tilgangsopplysninger.

Ved tvil skal innholdet holdes privat eller brukeren spørres før publisering.

## Kontroll før offentlig publisering

Før commit eller opplasting til et offentlig repo skal KI:

1. lese hele diffen som skal publiseres
2. søke etter hemmeligheter, personopplysninger og konto-/tilgangsdetaljer
3. fjerne, generalisere eller flytte privat innhold til privat lag
4. kontrollere at kilder og lenker i seg selv kan deles offentlig
5. stoppe og spørre brukeren hvis klassifiseringen fortsatt er usikker

Automatisk commit gjelder bare etter at denne kontrollen er bestått.

## Struktur

Universsaker journalføres i:

```text
journal/
    └── åååå-mm/
        └── åååå-mm-dd tema.md
```

Prosjektsaker journalføres i prosjektets lokale `.kiitos/journal/` når prosjektet er migrert. Laugsaker og private saker bruker tilsvarende journalmappe i riktig laug eller ruff.

## Offentlig og delt saksjournal

Bruk dette formatet i offentlige journaler og som normalformat i delte journaler:

```markdown
# [Kort sakstittel]

## Formål
[Hva saken skulle oppnå, uten å sitere hele instruksen.]

## Beslutninger
- [Beslutning og kort begrunnelse]

## Endringer
- [Fil eller flate og hva som ble endret]

## Verifikasjon
- [Hva som ble kontrollert og resultatet]

## Kilder
- [Bare offentlige eller delbare kilder]
```

Ta bare med seksjoner som tilfører verdi. Nye opplysninger legges normalt nederst, og historikk endres ikke uten en uttrykkelig grunn.

## Privat dialogjournal

Ordrett dialog kan brukes i en privat journal når den er nødvendig for sporbarhet, og brukeren har godkjent lagringen:

```markdown
# KI-instruks 1
> [Instruks ordrett]

[KI-svar eller saksnotat]
```

Regler for privat dialogjournal:

- Opplys tydelig at journalen inneholder ordrett dialog.
- Lagre den bare i ruff, privat laug eller lokal git-ignorert flate.
- Ta med minst mulig sensitivt innhold selv om flaten er privat.
- Ikke opprett skjulte, midlertidige samtalelogger som standard.
- Ikke rekonstruer manglende ordrett tekst fra usikre transcriptkilder.

## Historikk og rettelser

Journalfiler er append-only under normalt arbeid. Personvern- og sikkerhetsrettelser er et eksplisitt unntak: innhold som ikke skulle vært publisert kan saniteres eller fjernes etter brukerens godkjenning. Dokumenter hva slags rettelse som ble gjort, men ikke gjenta det sensitive innholdet.

Ved flytting eller sletting av historisk innhold skal målfilen verifiseres før kilden fjernes. Unngå wildcard-baserte flyttinger når mål og omfang ikke er entydige.

## Journalføring i arbeidsflyten

- Journalfør utfallet av saken, ikke hvert dialogledd.
- Hold deg til aktiv sak; parker sidefunn i riktig oppgavemappe.
- Bruk korte, konkrete formuleringer og korrekt norsk.
- Ved feil kan én relevant feilmelding tas med, men fjern tokens, stier og identifikatorer som ikke trengs.
- I feilrettingssaker kan saksnummer brukes når det er relevant og offentlig/delbart.
- Evalueringsjournaler følger `guide/evalueringsrammeverk.md`.
- Samme endring skal ikke journalføres i fulltekst på flere nivåer.

Etter journalføring kan KI foreslå en kort commitmelding. Dersom et arbeidsrom uttrykkelig tillater automatisk commit, skal publiseringskontrollen over gjennomføres først.

## Nivåregel

- Universelle endringer og tverrlaug arbeidsmåter hører hjemme i `kiitos.fyr/journal/` i sanitert form.
- Laugsaker hører hjemme i laugets journal, tilpasset laugets synlighet og målgruppe.
- Lokale prosjektsaker hører hjemme i prosjektets egen `.kiitos/journal/`.
- Personlige og sensitive saker hører hjemme i privat ruff, privat laug eller lokal git-ignorert journal.

Den fullstendige plasseringsregelen eies av [plassering.md](plassering.md).

## Avslutningsopprydding

Når en samtale både journalføres og avsluttes:

1. Skriv og kontroller journalen.
2. Foreslå oppgavefiler som er løst og ikke lenger representerer arbeid som gjenstår.
3. Slett bare når brukeren har bedt om det eller det følger tydelig av den avtalte arbeidsflyten.

## Fordeler

- Beslutninger og begrunnelser er sporbare.
- Offentlig dokumentasjon kan gjenbrukes uten å eksponere samtalen.
- Privat kontekst forblir i riktig lag.
- Arbeid er lett å gjenoppta og etterprøve.
