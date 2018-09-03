-- Revert schemas/app_public/grants/grant_schema_to_anonymous from pg

BEGIN;

REVOKE USAGE ON SCHEMA app_public FROM anonymous;

COMMIT;
