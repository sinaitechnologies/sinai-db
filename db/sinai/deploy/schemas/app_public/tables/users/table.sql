-- Deploy schemas/app_public/tables/users/table to pg

-- requires: schemas/app_public/schema

BEGIN;

CREATE TABLE app_public.users (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
    display_name text NOT NULL,
    username text NOT NULL
);

COMMIT;
