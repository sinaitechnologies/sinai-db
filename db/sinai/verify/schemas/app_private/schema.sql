-- Verify schemas/app_private/schema  on pg

BEGIN;

SELECT verify_schema ('app_private');

ROLLBACK;
