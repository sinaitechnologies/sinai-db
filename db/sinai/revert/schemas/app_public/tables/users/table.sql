-- Revert schemas/app_public/tables/users/table from pg

BEGIN;

DROP TABLE app_public.users;

COMMIT;
