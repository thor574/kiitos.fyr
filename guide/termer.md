# Termer – ordliste og arbeidsprosess

Denne fila er laget for å fange opp engelske og halvengelske IT-ord som ofte sniker seg inn.

- Seksjonene nedenfor gjøres i rekkefølge, og har instruks i hver.
- Hvis et begrep ikke allerede finnes i **Aksepterte forslag (implementert)**: bruk denne fila som første stopp. Legg inn begrepet under **Trenger hjelp med å finne norske ord** hvis du vil ha forslag, eller under **Forslag (til vurdering)** hvis du allerede har forslag, før det tas i bruk i styringsdokumenter eller annen tekst.
- Hold ordlistene i denne fila alfabetiske etter oppslagsordet på venstresiden.
- Prinsipper og overordnet språkføring ligger i [terminologi.md](terminologi.md).

---

## Verktøy: /maskin termer

Når ord trenger avklaring, eller når du vil formalisere ordbruk: aktivér maskinen `/maskin termer`.

---

## Trenger hjelp med å finne norske ord

Instruks: Du kan legge inn nye ord her som punktliste, så kan jeg finne norske alternativer og flytte dem til seksjonen under. Hold alfabetisk rekkefølge når du legger inn nye ord.

(Listen er tom)

## Forslag (til vurdering)

Instruks: Jeg kan legge til engelske ord under her, med 1–3 norske alternativer, så du kan velge riktig norsk begrep senere og flytte dem til seksjonen under. Jeg holder alfabetisk rekkefølge.

(Listen er tom)

## Beslutninger (til implementasjon)

Instruks: Du ser over forslagene og bestemmer endelig ordbruk før de flyttes inn her. Jeg flytter dem deretter til seksjonen under og oppdaterer relevante styringsdokumenter. Jeg har veto hvis et ord er dårlig; da avgjøres det ved diskusjon. Legg dem inn alfabetisk.

Kommando-ord: Skriv **innfør termer** når du vil at jeg skal implementere vedtakene.

(ingen ennå)

## Aksepterte forslag (implementert)

- ADR → **ARV**
- arbeitsflyter → **arbeidsflyter**
- backend → **innside**
- Breaking change → **kontraktbrudd**
- Build → **bygg**
- build-args → **byggeparametre**
- "build → push til ACR → App Service-pipeline" → "bygg → send til ACR → App Service-byggkjede"
- Build fails → **bygg feiler**
- Build output → **byggresultat**
- build-flagg → **byggeflagg**
- builden → **bygget**
- cache → **mellomlager**
- caching → **mellomlagre**
- chat-historien → **samtale-historien**
- Client Components → **klientkomponenter**
- container-runtime → **kjøretidsbeholder**
- Credentials → **tilgangsinformasjon**
- cross-workspace shared level → **univers**
- Dependency tree → **avhengighetstre**
- deploy-akse → **slipp-akse**
- deployer → **slipper**
- Deploy (verb) → **slippe**
- Deployment → **slipp**
- draft → **skisse**
- DOM → **ORD**
- Environment variables → **miljøvariabler**
- Feature flag → **funksjonsbryter**
- frontend → **utside**
- form → **skjema**
- Guardrails → **rammer**
- Guidelines → **retningslinjer**
- image → **avbildning** i byggekontekst, **bilde** i fotokontekst
- Issue / ticket → **sak**
- keys → **nøkler**
- label → **etikett**
- local storage / localStorage → **lokallager**
- log/logs → **logg** i entall, **logger** i flertall
- markup → **oppmerking**
- Mapping layer → **oversettingslag**
- NFR → **IFK**
- onboarding → **påmønstring**
- Pipeline → **byggkjede**, men **pipeline** når vi henviser til punktet i GitHub eller Azure DevOps som styrer leveransekjeden
- "Pipelines per utside-app" → "Byggkjeder per utside-app"
- Playbook → **styringsdokument**
- Policy → **føringer**
- PR / pull request → **PR** / **kodeflett**
- project layer → **prosjektlag**
- pusher → **sender**
- Release → **slipp** / **leveranse** avhengig av kontekst
- Rollout → **utrulling**
- Router (Next.js) → **ruter**
- Scope → **avgrensning**
- Secrets → **tilgangsnøkler**
- Server Components → **tjenerkomponenter**
- settings → **innstillinger**
- snakk beskjed → **gi beskjed** eller **si beskjed**
- submit-guard → **sendevokter**
- Source of truth → **førende referanse**
- stale → **utdatert** eller **lenkeråte**, avhengig av bruksmåte
- storage → **lager**
- Strict change control → **streng endringskontroll**
- tag → **merke**
- tagger → **merker**
- Troubleshooting → **feilsøking**
- "variable group" → **variabelgruppe**
- Workflow(s) → **arbeidsflyt(er)**
- Workspace → **arbeidsrom**
- workspace runtime layer → **arbeidsromnivå**
- workspaces → **arbeidsrom**

Anbefalt samlebetegnelse: **lokallager for skisser**, eventuelt «skisselagring i lokallager».