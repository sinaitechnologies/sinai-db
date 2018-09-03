-- Deploy schemas/app_public/tables/companies/table to pg

-- requires: schemas/app_public/schema

BEGIN;

CREATE TABLE app_public.companies (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
    name text
);

COMMIT;
