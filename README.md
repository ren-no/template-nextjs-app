# Prosjektnavn

Template for Next.js fullstack-apper med PostgreSQL og Docker.

## Kom i gang

1. Kopier `.env.example` til `.env.local` og fyll inn verdier
2. Kjør `npm install`
3. Kjør `npm run dev`

## Deploy

Se [Hvordan deploye nye prototyper](https://github.com/ren-no/product-handbook/blob/main/docs/deploy-prototyper.md).

### Første oppsett

1. Bytt ut `PROSJEKTNAVN` i alle filer der det forekommer:
   ```bash
   grep -r "PROSJEKTNAVN" . --include="*.yml"
   ```
2. Legg til secrets i GitHub repo settings:
   - `CI_REN_TOKEN`
   - `RENCI_GHA_TEST_KEY`
   - `RENCI_GHA_PROD_KEY`
3. Push en tag for å trigge deploy: `git tag v0.1.0 && git push --tags`
