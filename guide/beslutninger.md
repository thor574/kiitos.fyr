# Beslutninger — typer, status og plassering

Denne guiden eier Kiitos' universelle modell for beslutninger. Den beskriver hva som bør registreres, hvilke typer og statuser som kan brukes, og hvor et valg hører hjemme. Selve beslutningen eies alltid av laveste riktige faglige fil og lag.

## Når noe er en beslutning

En beslutning er et bevisst valg som avgrenser senere handling. Registrer valget når det påvirker retning, ansvar, løsning, risiko eller videre arbeid, og når en senere leser ellers måtte rekonstruere det fra samtaler eller historikk.

Ikke opprett en beslutningspost for rene observasjoner, løse ideer eller oppgaver. De kan bli beslutningsgrunnlag senere.

## Beslutningstyper

Bruk den mest presise typen som hjelper senere gjenfinning. Lokale områder kan lage undertyper uten å endre den universelle modellen.

| Type | Typiske valg |
|---|---|
| **Retning og prioritering** | mål, avgrensning, rekkefølge, hva som ikke skal gjøres |
| **Produkt, tjeneste og brukeropplevelse** | målgruppe, behov, funksjon, tjenesteform, brukerflyt |
| **Arkitektur** | systemgrenser, komponenter, avhengigheter, langsiktig struktur |
| **Design og utforming** | mønstre, grensesnitt, informasjonsstruktur, visuelle eller tekniske utformingsvalg |
| **Teknologi og integrasjon** | verktøy, plattform, protokoll, leverandør, kobling mellom systemer |
| **Data, informasjon og kunnskap** | datamodell, eierskap, kilde, lagring, livsløp, dokumentasjonsform |
| **Sikkerhet, personvern og tilgang** | risikonivå, datadeling, tilgang, hemmeligheter, etterlevelse |
| **Arbeidsform, organisering og ansvar** | roller, godkjenning, samarbeid, prosess, hvem som eier hva |
| **Kvalitet, evaluering og godkjenning** | kvalitetskrav, målemetode, akseptkriterier, beslutningsport |
| **Drift, innføring, migrering og utfasing** | utrulling, beredskap, støtte, overgang, tilbakeføring, avvikling |

Hvis flere typer passer, velg typen som uttrykker hovedkonsekvensen og noter de andre som relasjoner eller merker.

## Status

| Status | Betydning |
|---|---|
| **Foreslått** | Et konkret alternativ er formulert, men ikke valgt. |
| **Under utredning** | Alternativer og beslutningsgrunnlag undersøkes. |
| **Under utprøving** | Valget prøves tidsavgrenset i praksis. |
| **Avventer underlag** | Valget kan ikke avgjøres før et navngitt resultat, en avklaring eller annen evidens foreligger. |
| **Gjeldende** | Valget er normgivende innenfor angitt virkeområde. |
| **Forkastet** | Valget ble vurdert og bevisst ikke valgt. |
| **Erstattet** | En nyere beslutning har overtatt; pek til etterfølgeren. |
| **Utgått** | Virkeområdet eller behovet finnes ikke lenger. |

Bare **gjeldende** er normgivende. En pilot eller en beslutning som avventer underlag, skal ikke formuleres som etablert regel.

## Minste beslutningspost

Materielle valg bør gjøre dette synlig:

- identifikator og kort tittel
- type, status og virkeområde
- dato og ansvarlig eier
- kontekst og problemet som måtte avgjøres
- selve valget eller hypotesen som prøves
- begrunnelse og evidens
- reelle alternativer som ble vurdert
- konsekvenser, risiko og bevisste fravalg
- gjennomføring eller neste handling
- evalueringspunkt eller vilkår for ny vurdering
- relasjoner til beslutninger som erstattes eller påvirkes

Bruk [beslutningspost-malen](../maler/felles/beslutningspost-mal.md) når valget trenger en egen post. Små valg kan dokumenteres direkte i faglig eierfil med samme kjerneopplysninger.

## Plassering og eierskap

Beslutningstypen bestemmer ikke laget. Virkeområdet gjør det:

- Universelle Kiitos-valg eies av relevant guide eller `styringsgrunnlag/designvalg.md` i fyret.
- Laugvalg eies av relevant guide eller styringsfil i lauget.
- Prosjektvalg eies nær prosjektet, normalt i relevant faglig fil under `.kiitos/`.
- Personlige valg og vurderinger eies av ruff eller annen privat flate.

Bruk en egen `beslutninger.md` bare når ingen mer presis eierfil finnes. Arkitekturvalg kan fortsatt samles i `arkitekturvalg.md`, mens for eksempel tilgangsvalg ofte passer bedre i en sikkerhets- eller driftsguide.

Full plasseringslogikk eies av [plassering.md](plassering.md).

## Nåtilstand, oppgaver og historikk

- En rullende arbeidstilstand kan vise aktive og gjeldende beslutninger kort, med peker til eieren.
- En oppgave beskriver arbeid som gjenstår; den er ikke beslutningen.
- Faglig eierfil bærer det gjeldende valget og nødvendig begrunnelse.
- Journal eller ARV bevarer hendelsesforløp og historisk beslutningsgrunnlag når det er viktig.

Når en beslutning endrer status, oppdater den gjeldende eieren og bevar nødvendig historikk. Ikke la en gammel samtale eller et stadig voksende sammendrag være eneste kilde til hva som gjelder.
