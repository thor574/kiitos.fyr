# Lag og domener

Når du skriver kunnskap for KI, bør du spørre: Hvor gjelder dette?

Mange problemer oppstår fordi KI får riktig informasjon på feil nivå. En personlig preferanse blir behandlet som en felles regel. En prosjektregel blir brukt i et annet prosjekt. En generell visjon blandes med lokale detaljer.

Kiitos prøver å unngå dette ved å dele kunnskap etter område.

Området kan være virksomheten, selskapet, divisjonen, avdelingen, industrien, faget, faggruppen, prosjektet eller deg selv. Kiitos sine lag er en praktisk sortering av slike domener, ikke en påstand om at alle organisasjoner ser like ut.

## KI leser et utsnitt

Når KI skal gjøre noe, arbeider den fra innholdet den ser. Noen ganger er det nok. Andre ganger trenger den mer informasjon eller tydeligere styring.

Det betyr ikke at all kunnskap bør gis til KI hele tiden. For mye eller feil kontekst kan gjøre arbeidet mindre presist. Lagdeling gjør det mulig å gi KI det som er relevant for saken, uten å blande personlig, prosjektspesifikk og felles kunnskap.

## Enkel modell

| Område | Eksempel på innhold | Kiitos-lag |
|---|---|---|
| Felles for mange | Generelle prinsipper, begreper, arbeidsmåter | Fyr |
| Faggruppe, avdeling eller lag | Faglige mål, lokale rutiner, felles prosjektkart | Laug |
| Ett prosjekt eller system | Arkitektur, kodekontrakter, kjente feil, lokale oppgaver | Prosjekt |
| Deg selv | Preferanser, læring, private mål, personlig journal | Ruff eller lokal privat mappe |

Navnene er mindre viktige enn skillet. Det viktige er at KI kan forstå om en opplysning gjelder alle, en gruppe, ett prosjekt eller bare deg.

## Hvorfor dette betyr noe

Hvis alt ligger i én stor fil, må KI gjette hva som gjelder hvor. Da kan samarbeidet bli upresist.

Når kunnskapen ligger på riktig nivå, kan KI gjøre bedre vurderinger:

- Felles regler kan brukes bredt.
- Faggruppens praksis kan brukes i riktig sammenheng.
- Prosjektkunnskap kan holdes nær koden og systemet.
- Personlige preferanser kan være private og samtidig nyttige.

## Tommelfingerregel

Legg kunnskap på laveste riktige nivå.

Hvis noe bare gjelder deg, skal det ikke inn i en delt fil. Hvis noe bare gjelder ett prosjekt, skal det ikke beskrives som en generell regel. Hvis noe faktisk gjelder mange, kan det løftes opp når det er stabilt nok.

## Eksempel

En person kan starte med dette:

```text
min-kiitos/
  velkommen.md
  preferanser.md
  oppgaver.md
```

Et lag kan etter hvert få dette:

```text
kiitos.laug.eksempel/
  velkommen.md
  guide/
  styringsgrunnlag/
  journal/
```

Et prosjekt kan ha dette:

```text
prosjekt/
  .kiitos/
    prosjektinstruks.md
    oppgaver/
    journal/
```

Modellen kan vokse gradvis. Start der behovet er tydeligst.
