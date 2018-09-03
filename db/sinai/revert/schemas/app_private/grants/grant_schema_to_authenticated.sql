-- Revert schemas/app_private/grants/grant_schema_to_authenticated from pg

BEGIN;

REVOKE USAGE ON SCHEMA app_private FROM authenticated;

COMMIT;
