-- Revert schemas/app_public/tables/companies/table from pg

BEGIN;

DROP TABLE app_public.companies;

COMMIT;
