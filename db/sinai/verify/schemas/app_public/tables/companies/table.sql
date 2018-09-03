-- Verify schemas/app_public/tables/companies/table on pg

BEGIN;

SELECT verify_table ('app_public.companies');

ROLLBACK;
