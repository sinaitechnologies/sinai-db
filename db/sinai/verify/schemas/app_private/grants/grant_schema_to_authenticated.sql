-- Verify schemas/app_private/grants/grant_schema_to_authenticated  on pg

BEGIN;

SELECT has_schema_privilege('authenticated', 'app_private', 'USAGE');

ROLLBACK;
