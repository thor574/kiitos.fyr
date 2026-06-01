# Oppgaveparkering (scope discipline)

Formål: holde fart og fokus i aktiv sak, uten å miste forbedringer som oppdages underveis.

## Regel

- Hold deg til aktiv oppgave.
- Ikke gjennomfør sidefiks/inkonsistens-opprydding i samme sats uten eksplisitt beskjed.
- Parker delbare funn i `oppgaver/` som én fil per oppgave.
- Parker brukerprivate eller maskinlokale funn i `oppgaver.mine/` når saken ikke hører hjemme i den delte oppgavehaugen.
- Hvis sidefunnet er at arbeidsrommet mangler en nyttig agent, parker det som en egen `ki`-oppgave, si kort fra til brukeren og fortsett aktiv oppgave.

## Valg av samling

- Bruk `oppgaver/` når oppgaven er delbar, gjelder kodebasen, flere utviklere eller felles arbeidsmåter.
- Bruk `oppgaver.mine/` når oppgaven gjelder én utviklers maskin, installasjoner, tilgang, lokale IDE-forhold eller annet som ikke bør deles.
- `oppgaver.mine/` er en lokal, Git-ignorert mappe og opprettes bare ved behov.
- Bruk samme mal som i `oppgaver/mal-oppgave-mal.md` i begge samlinger.

## Når du oppdager noe underveis

1. Registrer en ny oppgavefil i riktig samling: `oppgaver/` for delbare funn eller `oppgaver.mine/` for private/lokale funn.
2. Legg inn kort beskrivelse, foreslått retning, risiko ved å vente.
3. Legg ved konkrete filreferanser.
4. Fortsett på aktiv oppgave.

## Når sidefunnet er behov for ny agent

1. Opprett en ny oppgavefil med `ki`-prefiks i `oppgaver/`.
2. Beskriv hvilken friksjon agenten skal redusere, og hvilken rolle agenten bør ha.
3. Pek på hvilke filer, mapper eller arbeidsflyter som gjorde behovet synlig.
4. Si kort fra til brukeren at agentbehovet er parkert.
5. Fortsett den opprinnelige saken uten å vente på egen agent-sats.

## Filnavn

- Bruk format: `<prefiks>-<nr>-<kort-tittel>.md`
- Bruk etablerte prefikser i arbeidsrommet, f.eks. `k2`, `k2webapi`, `k2loginapi`, `k2nvaapi`, `k2issnapi`, `kdb`, `k1`, `npi`, `ki`.
- Nummerering i `oppgaver.mine/` er lokal for den mappen og uavhengig av den delte køen.
- Bruk malen i `oppgaver/mal-oppgave-mal.md`.

## Prioritering i etterkant

- Triage gjøres i egen sats.
- Bruk feltene prioritet/estimat/status for å gjøre neste arbeid konkret og planbart.

## Når en parkert oppgave blir løst

1. Journalfør løsningen i riktig journal.
2. Slett oppgavefilen når den ikke lenger representerer arbeid som gjenstår.
3. Behold oppgavefilen bare hvis bruker eksplisitt ønsker den som historisk spor utenfor journalen.
