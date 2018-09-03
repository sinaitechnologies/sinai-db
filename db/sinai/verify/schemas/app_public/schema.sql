-- Verify schemas/app_public/schema  on pg

BEGIN;

SELECT verify_schema ('app_public');

ROLLBACK;
