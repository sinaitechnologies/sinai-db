-- Deploy schemas/app_public/grants/grant_schema_to_anonymous to pg

-- requires: schemas/app_public/schema

BEGIN;

GRANT USAGE ON SCHEMA app_public TO anonymous;

COMMIT;
