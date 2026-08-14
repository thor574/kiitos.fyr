# Datamodell-dokumentasjon i systemutviklingsprosjekter

**Prinsipp:** Alle systemutviklingsprosjekter med database skal ha en forståelig, oppdatert guide til datamodellen.

## Hvorfor

En dokumentert datamodell:
- Gjør KI-agenter og mennesker i stand til å forstå systemet raskt
- Reduserer feil ved endringer (forståelse av relasjoner og begrensninger)
- Forenkler feilsøking og ytelsesoptimalisering
- Gjør onboarding av nye utviklere raskere
- Forhindrer at domenelogikk kun finnes i hodene til få personer

**Uten datamodell-guide:** Du må reverse-engineere strukturen fra SQL-script og kode hver gang.

## Hva en god datamodell-guide skal inneholde

### Minimum (konsis guide, maks 200 linjer)

1. **Hovedtabeller og deres rolle**
   - Kjernetabeller med kort beskrivelse
   - Kodetabeller/oppslag vs. transaksjonsdata
   - Temporale aspekter (historikk, versjoner, gyldighetsperioder)

2. **Nøkkelrelasjoner**
   - Foreign keys og referanser
   - Hierarkiske strukturer (selvrekurrente relasjoner)
   - Many-to-many-koblinger

3. **Viktige views**
   - Hva de aggregerer/beregner
   - Hvilke tabeller de bygger på
   - Når de oppdateres (on-the-fly vs. materialisert)

4. **Business rules implementert i database**
   - Triggers, constraints, computed columns
   - Validering og integritet
   - Beregninger som skjer i SQL (ikke applikasjon)

5. **Temporale mønstre**
   - Hvordan historikk lagres
   - Hvordan versjoner/revisions håndteres
   - Hvordan "gjeldende" data skilles fra arkivert

### Utvidet (ved behov)

- ER-diagram (hvis store/komplekse strukturer)
- Eksempel-queries for vanlige use cases
- Migrasjonshistorikk (breaking changes)
- Performance-betraktninger (indekser, denormalisering)

## Hvor skal guiden ligge

I prosjektets `.kiitos/guide/` mappe:

```
.kiitos/
  guide/
    datamodell.md          ← Hovedguide
    datamodell-[modul].md  ← Ved behov: modul-spesifikke tillegg
```

**Merk:** Ikke i `kdb/` eller database-repo, fordi:
- `kdb/` inneholder raw SQL-script (vanskelig å navigere)
- Guiden skal være tilgjengelig fra prosjektet (der koden er)
- KI-agenten leser kiitos-strukturen, ikke kdb-strukturen

## Når skal det parkeres oppgave om manglende guide

**Trigger:** Når du eller KI-agent støter på disse situasjonene:

1. **Debugger database-relatert bug** og må grave i SQL-script for å forstå struktur
2. **Implementerer ny feature** som krever forståelse av tabellrelasjoner
3. **Onboarding** (ny utvikler eller KI-agent møter prosjektet første gang)
4. **Performance-issue** som krever forståelse av joins og indekser
5. **Dataintegritet-problem** som krever forståelse av constraints og triggers

**Unntak:** Ikke opprett oppgave hvis:
- Prosjektet har < 5 tabeller (trivielt nok til å forstå direkte)
- Prosjektet er i sunset-fase (skal avvikles)
- Du allerede har opprettet oppgaven tidligere

## Prosess: Lag datamodell-guide fra kode

Når du parkerer oppgave om manglende guide, følg denne strukturen:

### Oppgavemal

```markdown
# [Prosjekt]-XX: Lag guide til datamodell

**Status:** Ikke startet  
**Prioritet:** P3 (Dokumentasjon)  
**Omfang:** M (Middels - krever analyse av SQL og kode)  
**Opprettet:** [Dato]  
**Relatert:** [Event/bug som utløste behovet]

## Bakgrunn

Ved arbeid med [sak/feature] ble det tydelig at vi mangler en samlet 
guide til datamodellen.

Kunnskapen er spredt i:
- `kdb/sync/[schema]/tables/` - tabelldefinisjoner
- `kdb/sync/[schema]/views/` - views
- `[repo]/src/.../repository/` - JPA entities eller SQL queries
- `sql/[migrasjoner]/` - historiske endringer

## Mål

1. **Kartlegg struktur** ved å analysere:
   - `kdb/sync/[schema]/tables/*.Table.sql` - alle tabeller
   - `kdb/sync/[schema]/views/*.View.sql` - relevante views
   - `src/.../entity/` eller `repository/` - domeneklasser
   - `sql/[migrasjon]/` - for å forstå evolusjon

2. **Opprett guide** i `.kiitos/guide/datamodell.md`:
   - Hovedtabeller og deres rolle
   - Nøkkelrelasjoner (foreign keys, hierarkier)
   - Viktige views (hva de beregner, når de oppdateres)
   - Business rules i database (triggers, constraints)
   - Temporale mønstre (historikk, versjoner)

3. **Hold konsis:** Maks 200 linjer for kjerneforståelse

## Akseptansekriterier

- [ ] Gjennomgått alle tabeller i `kdb/sync/[schema]/tables/`
- [ ] Kartlagt views i `kdb/sync/[schema]/views/`
- [ ] Guide finnes i `.kiitos/guide/datamodell.md` med alle 5 minimum-seksjoner
- [ ] Guide lesbar for både menneske og KI-agent (konsis, ikke verbose)

## Notater

- Denne oppgaven løser ikke bugs, men gjør fremtidig arbeid enklere
- Guide skal være levende dokument - oppdateres ved breaking changes
```

### Analysemetode

**Primær kilde: kdb**
```sql
-- 1. List alle tabeller
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_SCHEMA = '[schema]' AND TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

-- 2. For hver tabell: se foreign keys
SELECT 
  fk.name AS FK_Name,
  tp.name AS Parent_Table,
  cp.name AS Parent_Column,
  tr.name AS Referenced_Table,
  cr.name AS Referenced_Column
FROM sys.foreign_keys fk
INNER JOIN sys.tables tp ON fk.parent_object_id = tp.object_id
INNER JOIN sys.tables tr ON fk.referenced_object_id = tr.object_id
INNER JOIN sys.foreign_key_columns fkc ON fk.object_id = fkc.constraint_object_id
INNER JOIN sys.columns cp ON fkc.parent_column_id = cp.column_id AND fkc.parent_object_id = cp.object_id
INNER JOIN sys.columns cr ON fkc.referenced_column_id = cr.column_id AND fkc.referenced_object_id = cr.object_id
WHERE tp.schema_id = SCHEMA_ID('[schema]')
ORDER BY tp.name, fk.name;

-- 3. List views
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.VIEWS 
WHERE TABLE_SCHEMA = '[schema]'
ORDER BY TABLE_NAME;
```

**Sekundær kilde: Prosjektkode**
- JPA entities (`@Entity`, `@Table`, `@ManyToOne`, `@OneToMany`)
- Repository SQL queries (native queries som JOIN-er tabeller)
- Migrasjonsscript (for å se evolusjon og design-intensjoner)

## Eksempler fra virkeligheten

### NPI: ki-16-datamodell-guide-npi.md

Bakgrunn: Ved arbeid med SFO-simulering oppdaget vi at fagfelt kan rapportere 
til faggrupper (nytt fra HUM26). Dette var ikke dokumentert noe sted.

Løsning: Opprettet oppgave `ki-16` for å:
1. Gå gjennom `sql/hum2026/` (del1-del4)
2. Kartlegge `kdb/sync/npi/tables/` (organisering, hierarki, nokkeltall)
3. Kartlegge `kdb/sync/npi/views/` (vnokkeltall, nokkeltall_etter)
4. Lage guide med organisasjonsstruktur, hierarki-konsept, nokkeltall-flyt

### K2: Mangler datamodell-guide

Status: Ikke dokumentert ennå. Bør opprettes når neste database-relaterte 
bug/feature dukker opp.

Kandidat-scope:
- `kdb/sync/kr2/` - kanalregister-schema
- Viktige tabeller: Tidsskrift, Forlag, Publisering, etc.
- Historikk-konsept (tidsskrift_id vs. original_tidsskrift_id)

## Relaterte guider

- Prosjektguiden `npi/.kiitos/guide/sfo-simulering.md` bruker datamodellkunnskap om `npi.nokkeltall`.
- (ingen andre ennå - dette er første gang vi formaliserer prinsippet)
