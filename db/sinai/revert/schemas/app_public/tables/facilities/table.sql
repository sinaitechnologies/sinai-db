-- Revert schemas/app_public/tables/facilities/table from pg

BEGIN;

DROP TABLE app_public.facilities;

COMMIT;
