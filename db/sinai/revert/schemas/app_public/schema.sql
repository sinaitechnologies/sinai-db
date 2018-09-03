-- Revert schemas/app_public/schema from pg

BEGIN;

DROP SCHEMA app_public;

COMMIT;
