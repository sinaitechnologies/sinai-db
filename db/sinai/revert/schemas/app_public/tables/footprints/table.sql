-- Revert schemas/app_public/tables/footprints/table from pg

BEGIN;

DROP TABLE app_public.footprints;

COMMIT;
