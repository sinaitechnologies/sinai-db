-- Verify schemas/app_public/grants/grant_schema_to_authenticated  on pg

BEGIN;

SELECT has_schema_privilege('authenticated', 'app_public', 'USAGE');

ROLLBACK;
