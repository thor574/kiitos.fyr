# AGENTS.md (kiitos-rot)

Denne fila finnes fordi noen agenter leter etter `AGENTS.md` i rota som første inngang.

Kiitos er et universelt KI-instruksrammeverk. For operative instrukser:
1. Les `./velkommen.md`.
2. Følg instruksjonskjeden derfra.

## Agentmaler

Agentmaler ligger i `maler/felles/.github/agents/`. Aktive agenter genereres fra disse malene og plasseres i hvert laugs `.github/agents/`-mappe ved installasjon.

| Agent | Rolle | Når bruke |
|---|---|---|
| **agent001** | Laug-speider | Finn riktig prosjekt, instrukser, kodestartpunkter og angrepsplan for en sak |
| **agent002** | Instruksflate-vokter | Finn minste nødvendige kiitos-flate: hvilke lag, filer og guider som må leses |
| **agent003** | Oppgave-triager | Les en oppgave eller et sidefunn og foreslå prosjekt, avgrensning, prioritet og første sats |
| **agent004** | Review-vakt | Målrettet review med fokus på bugs, kontraktbrudd, regresjonsrisiko og testhull |
| **agent005** | Harmoniseringsspeider | Oppdage om en lokal endring har parallelle konsekvenser i søsterprosjekter |

Alle agenter er lesende spesialister — ingen av dem gjør kodeendringer.

### Typiske kjedemønstre

Agentene kan kjedes etter behov. Vanlige mønstre:

| Situasjon | Kjede |
|---|---|
| Ny oppgave fra `oppgaver/` | agent001 → agent003 → implementering |
| Endring som kan berøre søsterprosjekter | implementering → agent005 → eventuelt agent004 |
| Ukjent instruksflate ved oppstart | agent002 → agent001 |
| Ferdig endring, klar for review | agent004 |

Kjedene er veiledende, ikke obligatoriske. Hopp over ledd som ikke tilfører verdi for den konkrete saken.

### Plassholdere i malene

| Plassholder | Beskrivelse | Brukes i |
|---|---|---|
| `{{PROSJEKTOVERSIKT}}` | Laugets røtter og prosjektbeskrivelser | agent001 |
| `{{SØSTERRELASJONER}}` | Konkrete prosjektpar og avhengigheter | agent005 |
| `{{EKSEMPLER}}` | Laugspesifikke eksempler på forespørsler | alle |
