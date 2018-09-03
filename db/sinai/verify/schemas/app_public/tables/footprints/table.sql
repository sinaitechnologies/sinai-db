-- Verify schemas/app_public/tables/footprints/table on pg

BEGIN;

SELECT verify_table ('app_public.footprints');

ROLLBACK;
