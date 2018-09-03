-- Verify schemas/app_public/tables/facilities/table on pg

BEGIN;

SELECT verify_table ('app_public.facilities');

ROLLBACK;
