-- Revert schemas/app_private/schema from pg

BEGIN;

DROP SCHEMA app_private;

COMMIT;
