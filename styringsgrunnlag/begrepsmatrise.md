# Begrepsmatrise — kiitos

Kanonisk definisjonsfil for kiitos-begreper, navnekonvensjoner og DRY-prinsipp.

## Begreper

| Begrep | Definisjon | Prefiks/mapper |
|---|---|---|
| **kiitos** | Universelt KI-instruksrammeverk. Samlebetegnelse for hele modellen. | — |
| **fyr** (fyret) | Det universelle laget — delt på tvers av alle laug. Fyrtårnet som lyser over alt. | `kiitos.fyr/` (eget repo/workspace-rot) |
| **laug** (lauget) | Én konkret samling prosjekter med tverrprosjektlige instrukser. Delt eller privat. Gildet som binder beslektet arbeid. | `kiitos.laug.<navn>/` (delt) eller eget repo (privat) |
| **ruff** (ruffen) | Personlige preferanser, oppgaver, kompetanse. Deles på tvers av laug. Valgfritt. Din private kahytt. | `kiitos.ruff.<bruker>/` |
| **prosjekt** | Eitt prosjekt med lokal `.kiitos/`. | `.kiitos/` |
| **personlig** | Instrukser som gjelder én utvikler. Ikke innsjekket i delte repoer. | Pref-filer, ruff-repo, eller `*.mine/`/`*.min/` i private laug |
| **delt** | Instrukser som skal gjenbrukes av flere. Innsjekket i repo. | Alt som ikke er personlig |
| **kiitos.laug.\<navn\>** | Delt laug for et lag. Git-repo som deles mellom lagmedlemmer. | `kiitos.laug.kanalregistrene/` |
| **kiitos.ruff.\<bruker\>** | Personlig ruff-repo. Brukes i delte laug for å ha personlige filer adskilt fra det delte repoet. | `kiitos.ruff.th/` |

### To dimensjoner

Modellen har to dimensjoner som ikke skal blandes:

1. **Lag:** fyr → laug → ruff → prosjekt
2. **Eierskap:** delt → personlig

## Navnekonvensjoner

1. **Filnavn gjentar ikke mappenavn.** `styringsgrunnlag/visjoner.md`, ikke `universvisjoner.md`.
2. **Personlige mapper i private laug bruker `.mine`/`.min`-suffiks.** `oppgaver.mine/`, `kompetanse.min/`.
3. **Personlige filer i delte laug bor i `kiitos.ruff.<bruker>/`**, ikke i det delte repoet.
4. **Mappe + filstamme = naturlig unik ID** som kan brukes i henvisninger.
5. **Referanser peker til modul (mappenavn)**, ikke nødvendigvis til eksplisitt filnavn.
6. **Repo-prefiks `kiitos.laug.`** for delte laug, **`kiitos.ruff.`** for personlige ruffer.

## DRY-prinsipp

Kiitos bruker DRY (Don't Repeat Yourself) som universprinsipp:

- Hver instruks, regel eller fakta har **én kanonisk eier** (én fil som er autoritativ kilde).
- Andre filer **peker til eieren**, ikke gjentar innholdet.
- Peking gjøres i **brede kontekster** (innledning av en fil), ikke i presise kontekster der det blir duplikattungt.
- Filer er **moduler** som hektes inn etter behov — det er nok å peke til modulen.
