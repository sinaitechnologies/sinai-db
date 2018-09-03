-- Revert schemas/app_public/grants/grant_schema_to_authenticated from pg

BEGIN;

REVOKE USAGE ON SCHEMA app_public FROM authenticated;

COMMIT;
