-- Deploy schemas/app_private/grants/grant_schema_to_authenticated to pg

-- requires: schemas/app_private/schema

BEGIN;

GRANT USAGE ON SCHEMA app_private TO authenticated;

COMMIT;
