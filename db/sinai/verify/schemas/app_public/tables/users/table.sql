-- Verify schemas/app_public/tables/users/table on pg

BEGIN;

SELECT verify_table ('app_public.users');

ROLLBACK;
