# Installasjon

Denne fila eier de konkrete oppsettsstegene for kiitos gen5.

## Hva kiitos er

Kiitos er et universelt KI-instruksrammeverk for VS Code. Det gjør arbeidsmåter, prosjektkunnskap og personlige preferanser mer lesbare for KI, slik at samarbeid med KI blir mindre tilfeldig.

`kiitos` er et finsk ord og betyr takk. Det begynner med KI-I (KI-Instrukser) og slutter med TOS (Terms of service) — regler for arbeidet med KI.

Tradisjonelt bygger vi opp våre instrukssett rundt KI individuelt. En begynner gjerne med ett prosjekt, og over tid bygger en så opp instrukser og informasjon om det som en ikke ønsker å gjenta, så KI lærer. Kiitos deler dette oppsettet i fire lag — fyr, laug, ruff og prosjekt — slik at flere utviklere kan dra fordeler av hverandres tilpasninger og dokumentasjon.

## Forutsetninger

- Git er installert og du har tilgang til organisasjonens repoer.
- Vi bruker Enterprise-lisens på Copilot. Kontakt riktig intern støttefunksjon hvis du mangler dette.
- Installasjonsveiledningen er skrevet for Visual Studio Code med GitHub Copilot-utvidelsen.
- Oppsettet støtter at du bruker VS Code parallelt ved siden av din vante IDE.
- Hvis dine lokale stier avviker fra en delt workspace-fil, lag en lokal workspace-variant fra malen i stedet for å endre den delte fila direkte.

## Lagmodell

```
kiitos.fyr                  ← universelt, delt på tvers av alle laug
  └─ kiitos.laug.<navn>  ← delt laug for et lag
       └─ kiitos.ruff.<bruker>  ← personlig ruff (valgfritt)
            └─ prosjekt (.kiitos/)  ← prosjektnær styring
```

- **Delt laug** bruker `kiitos.laug.<navn>` + valgfri `kiitos.ruff.<bruker>`.
- **Privat laug** trenger ikke `kiitos.ruff.*` — personlige filer ligger direkte i lauget.

## Reiseoversikt

Installasjon har fire faser. De to første er påkrevd, de to siste er valgfrie.

- [ ] **Fase 1 — Grunnoppsett** (Nivå 1): Workspace, kiitos-rot, første KI-samtale, MCP-tilkobling
- [ ] **Fase 2 — Etterkontroll**: Verifiser at alt fungerer som forventet
- [ ] **Fase 3 — Personalisering** (Nivå 2): Pref-fil, profil, rolletilpasning *(valgfritt, anbefalt)*
- [ ] **Fase 4 — Prosjektpåmønstring**: Koble prosjektmapper til kiitos *(når du legger til nye prosjekter)*

> **Tips:** Du kan også starte en KI-samtale og skrive «guidet tur» — KI vil da lede deg gjennom oppsettet trinnvis i dialog.

Framdriften spores i din lokale pref-fil (`.github/copilot-kiitos-pref.md`) under seksjonen **Installasjonsframdrift**. KI krysser av faser etterhvert som de fullføres.

## Oppstartsinstruks for ny bruker

Kiitos skal kunne startes fra den instruksflaten KI-verktøyet faktisk støtter. I GitHub Copilot kan det være `.github/copilot-instructions.md`; i andre verktøy kan det være `AGENTS.md`, en brukerprofil, en prosjektinstruks eller en annen oppstartsfil. Kiitos sin kanoniske inngang er likevel `velkommen.md` i hvert lag.

Gi en ny bruker denne instruksen som første tekst i valgt KI-verktøy:

```text
Du skal hjelpe meg å installere og ta i bruk kiitos trinnvis.

1. Finn eller be meg hente inn kiitos.fyr, relevant kiitos.laug.<navn> og eventuell kiitos.ruff.<bruker>.
2. Be meg legge disse mappene til som workspace-røtter sammen med prosjektmappene jeg skal arbeide i.
3. Les først kiitos.fyr/velkommen.md, deretter laugets velkommen.md og eventuell ruff/velkommen.md.
4. Følg kiitos.fyr/guide/installasjon.md for grunnoppsett, etterkontroll, personalisering og prosjektpåmønstring.
5. Når installasjonen er kontrollert, forklar hvordan jeg starter opplæring og gjennomgang med /maskin oppia.
```

De tynne portalfilene i hvert lag bør derfor bare gjøre én ting: peke til lagets `velkommen.md` og be KI følge instruksjonskjeden derfra. Hvis en bruker har et KI-verktøy uten fast oppstartsfil, lim inn instruksen over i verktøyets bruker- eller prosjektinstruks.

## Fase 1 — Grunnoppsett

### Steg 1–4: Workspace-oppsett

1. Hent ned kiitos-repoet (`git clone`) og legg det der du vil.

2. Åpne laugets `.code-workspace`-fil i VS Code, eller opprett en ny fra laugets mal (`.code-workspace - mal`).

3. Legg til kiitos-mappen via **File → Add Folder to Workspace**. Gi den visningsnavnet `kiitos.fyr`.

4. Sørg for at `kiitos.fyr` ligger øverst i workspace-rekkefølgen:
   1. `kiitos.fyr` ← universelt repo
   2. `kiitos.laug.<navn>` eller lauget ← delt/privat laug
   3. `kiitos.ruff.<bruker>` ← personlig ruff (valgfritt)
   4. Prosjektmapper

### Steg 5–6: Første KI-samtale

5. Start en ny KI-samtale. KI skal:
   - Lese `kiitos.fyr/velkommen.md` (via valgt oppstartsinstruks eller portalfil)
   - Detektere lauget og dets type (delt/privat)
   - Tilby å opprette pref-fil hvis den mangler
   - Avslutte med kanarifugl-linje

6. Verifiser at KI svarer med kanarifugl-linjen og at den har lest riktig laug.

### Steg 7: GitHub-tilkobling (MCP)

7. Sett opp GitHub-tilkobling via MCP slik at KI kan lese og opprette issues direkte. Se [GitHub Issues via MCP](#github-issues-via-mcp) lenger ned.

> **Sjekkpunkt — Fase 1 ferdig?** Du er klar hvis: ✅ KI svarer med kanarifugl-linje, ✅ KI leser riktig laug, ✅ `github`-serveren vises i MCP-listen. Be KI krysse av Fase 1 i pref-filen din.

## Fase 2 — Etterkontroll

1. Bekreft at KI ser den operative kiitos-roten, arbeidsrommet og eventuelle profil- og prosjektinnganger.
2. Be KI forklare hvilke filer den leser ved oppstart.
3. Sjekk at kanarifugl-linjen vises.
4. Sjekk at KI finner riktig arbeidsromtype (delt/privat).
5. Sjekk at pref-bootstrap fungerer korrekt — når første samtale starter uten lokal pref-fil, skal KI hjelpe deg å opprette den fra malen.
6. Be KI sjekke hvilke terminalkommandoer og anbefalte verktøy som faktisk er tilgjengelige lokalt.
7. Verifiser MCP-tilkobling: åpne kommandopaletten → **MCP: List Servers** — `github` skal stå i listen med status «started».

> **Sjekkpunkt — Fase 2 ferdig?** Alle syv punktene over er bekreftet. Du har et fungerende kiitos-oppsett. Fase 3 og 4 er valgfrie og kan gjøres når som helst.

## Fase 3 — Personalisering *(valgfritt, anbefalt)*

### I delt laug (med kiitos.ruff.*)

1. Hent ned eller opprett `kiitos.ruff.<bruker>` og legg den til i workspace.

2. Opprett `.github/copilot-kiitos-pref.md` i `kiitos.ruff.<bruker>/` fra malen `kiitos.fyr/.github/copilot-kiitos-pref-mal.md`, eller la KI hjelpe deg med dette.

3. Personlige oppgaver, kompetansenotater og rollebeskrivelse ligger i `kiitos.ruff.<bruker>/`.

### I privat laug

1. Opprett `.github/copilot-kiitos-pref.md` i lauget fra malen, eller la KI hjelpe.

2. Personlige filer ligger direkte i lauget.

### Felles

- Juster påmønstringsmodus, modulvalg, kanarifugl og andre valg i pref-filen.
- Laugspesifikke guider legges i laugets `guide/`.
- Laugspesifikke skills legges i laugets `.github/skills/`.
- Parker sidefunn i laugets `oppgaver/`.
- Be KI vurdere riktig eierlag før du sprer samme innhold flere steder.

> **Sjekkpunkt — Fase 3 ferdig?** Du har en pref-fil, og KI tilpasser seg dine valg ved oppstart. Be KI krysse av Fase 3.

## Fase 4 — Prosjekt og laug *(ved behov)*

### Opprette et nytt laug

#### Delt laug (for et lag)

1. Opprett en ny mappe `kiitos.laug.<navn>/`.

2. Opprett disse filene og mappene:
   - `velkommen.md` med `<!-- kiitos-type: delt -->` på første linje
   - `AGENTS.md` (tynt portal → velkommen.md)
   - `.github/copilot-instructions.md` (tynt portal → velkommen.md)
   - `.gitignore` (workspace-fil + lokal pref)
   - `guide/kiitos.md` (prosjektkart og laugspesifikk orientering)
   - `LESMEG.md` (menneskevendt navigasjonshjelp)

3. Opprett mapper etter behov: `guide/`, `styringsgrunnlag/`, `journal/`, `oppgaver/`, `spesifikasjoner/`, `analyse/`.

4. Generer laugspesifikke agenter fra malene:
   - Kopier malene fra `kiitos.fyr/maler/felles/.github/agents/` til `.github/agents/` i det nye lauget.
   - Fyll inn plassholderne:
     - `{{PROSJEKTOVERSIKT}}` — beskriv laugets kiitos-røtter og prosjektrøtter med korte forklaringer.
     - `{{SØSTERRELASJONER}}` (agent005) — list opp konkrete prosjektpar og avhengigheter.
     - `{{EKSEMPLER}}` (alle agenter) — legg inn eksempler som passer dette lauget.
   - KI kan hjelpe: be om å «generere agenter for dette lauget» etter at prosjektmappene er lagt til.

5. Lag en workspace-mal (`<navn>.code-workspace - mal`) med kiitos + laug + prosjektplassholdere.

6. Bruk `kiitos.laug.kanalregistrene/` som referanseeksempel.

#### Privat laug

1. Opprett en ny mappe for lauget.

2. Opprett `velkommen.md` med `<!-- kiitos-type: privat -->` på første linje.

3. Opprett portaler (`AGENTS.md`, `.github/copilot-instructions.md`) og øvrige mapper som over.

4. Generer laugspesifikke agenter fra malene (se steg 4 under «Delt laug» for detaljer).

5. Lokale skills legges i `.github/skills/`. Delte skills hentes fra kiitos-roten.

6. Bruk malene i `kiitos.fyr/maler/privat-arbeidsrom/` som utgangspunkt.

### Gitmodell

- Kiitos (universelt repo) er et eget Git-repo.
- Laug (`kiitos.laug.*`) er egne Git-repoer.
- Personlige ruffer (`kiitos.ruff.*`) kan være egne Git-repoer, eller lokale mapper uten versjonskontroll.
- Prosjektmapper har sine egne Git-repoer.
- Workspace-filen (`.code-workspace`) er gitignorert — den er lokal per utvikler.

### Påmønstring av nytt prosjekt

Når et nytt prosjekt skal legges til i lauget:

1. Legg prosjektmappen til som workspace-rot i VS Code.
2. Opprett `.kiitos/prosjektinstruks.md` i prosjektroten. Bruk malen i `kiitos.fyr/maler/felles/.kiitos/prosjektinstruks.md` som utgangspunkt.
3. KI kan hjelpe deg å fylle ut malen trinnvis. Den vil tilby å:
   - identifisere prosjekttype, teknologistabel og viktige mapper
   - kartlegge API- og databasekontrakter
   - finne tverrprosjektlige avhengigheter i lauget
   - foreslå lokale huskeregler basert på eksisterende kode
   - sette opp lokale kjøreinstrukser
4. Oppdater laugets agenter i `.github/agents/`:
   - Legg til det nye prosjektet i `{{PROSJEKTOVERSIKT}}` (agent001).
   - Legg til eventuelle nye søsterrelasjoner i `{{SØSTERRELASJONER}}` (agent005).
   - Oppdater eksempler der det er naturlig.
   - KI kan hjelpe: be om å «oppdatere agentene med det nye prosjektet».
5. Når prosjektinstruksen er klar, verifiser at KI finner og leser den ved oppstart.

> **Sjekkpunkt — Fase 4 ferdig?** Laug/prosjekt er opprettet og KI leser prosjektinstruksen ved oppstart. Be KI krysse av Fase 4.

---

## Tillegg: GitHub Issues via MCP

Lauget kan koble KI til GitHub Issues og andre GitHub-ressurser via MCP (Model Context Protocol). Tilkoblingen bruker Copilots innebygde proxy, så du trenger ikke opprette et eget personlig tilgangstoken (PAT).

### Forutsetninger

- VS Code versjon 1.99 eller nyere (MCP-støtte er innebygd fra denne versjonen).
- GitHub Copilot-utvidelsen er installert og du er logget inn med Enterprise-lisens.

### Oppsett

1. Sjekk om lauget allerede har en MCP-konfigurasjon:

   ```
   .vscode/mcp.json
   ```

   Hvis filen finnes og inneholder en `github`-server, er oppsettet allerede klart — gå til steg 4.

2. Opprett `.vscode/mcp.json` i laugets rot (f.eks. `kiitos.laug.<navn>/.vscode/mcp.json`) med dette innholdet:

   ```json
   {
     "servers": {
       "github": {
         "type": "http",
         "url": "https://api.githubcopilot.com/mcp/"
       }
     }
   }
   ```

   > **Merk:** Filen skal committes til Git slik at hele laget får tilkoblingen automatisk. Ikke legg den i `.gitignore`.

3. Last inn konfigurasjonen ved å gjøre én av disse:
   - Åpne kommandopaletten (`Ctrl+Shift+P`) → **MCP: List Servers** — du skal se `github` i listen.
   - Eller last VS Code på nytt (**Developer: Reload Window**).

4. Verifiser at tilkoblingen fungerer:
   - Åpne en ny KI-samtale.
   - Skriv f.eks. «List open issues i repoet `<org>/<repo>`».
   - KI skal kunne hente issues direkte uten at du oppgir token.

5. Første gang KI bruker en MCP-verktøy, viser VS Code en godkjenningsdialog. Godkjenn denne — den huskes for fremtidige kall.

### Tilgjengelige funksjoner

Med GitHub MCP-serveren kan KI blant annet:

- Lese og søke i issues og pull requests
- Opprette og kommentere issues
- Hente filinnhold og commits fra GitHub
- Søke i kode på tvers av repoer

### Feilsøking

| Problem | Løsning |
|---|---|
| `github`-serveren vises ikke i MCP-listen | Sjekk at `mcp.json` ligger i `.vscode/`-mappen i en workspace-rot, ikke i en undermappe. Last VS Code på nytt. |
| «Not authenticated» eller lignende feil | Sjekk at du er logget inn i GitHub Copilot (se statuslinjen nederst i VS Code). |
| Verktøyene dukker ikke opp i KI-samtalen | Oppdater VS Code og Copilot-utvidelsen til nyeste versjon. MCP-støtte krever VS Code 1.99+. |

## Fase 2 — Etterkontroll

1. Bekreft at KI ser den operative kiitos-roten, arbeidsrommet og eventuelle profil- og prosjektinnganger.
2. Be KI forklare hvilke filer den leser ved oppstart.
3. Sjekk at kanarifugl-linjen vises.
4. Sjekk at KI finner riktig arbeidsromtype (delt/privat).
5. Sjekk at pref-bootstrap fungerer korrekt — når første samtale starter uten lokal pref-fil, skal KI hjelpe deg å opprette den fra malen.
6. Be KI sjekke hvilke terminalkommandoer og anbefalte verktøy som faktisk er tilgjengelige lokalt.
7. Verifiser MCP-tilkobling: åpne kommandopaletten → **MCP: List Servers** — `github` skal stå i listen med status «started».

> **Sjekkpunkt — Fase 2 ferdig?** Alle syv punktene over er bekreftet. Du har et fungerende kiitos-oppsett. Fase 3 og 4 er valgfrie og kan gjøres når som helst.

## Fase 3 — Personalisering *(valgfritt, anbefalt)*