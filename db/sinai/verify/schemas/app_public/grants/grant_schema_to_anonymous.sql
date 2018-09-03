-- Verify schemas/app_public/grants/grant_schema_to_anonymous  on pg

BEGIN;

SELECT has_schema_privilege('anonymous', 'app_public', 'USAGE');

ROLLBACK;
