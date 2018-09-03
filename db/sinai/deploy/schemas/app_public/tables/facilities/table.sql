-- Deploy schemas/app_public/tables/facilities/table to pg

-- requires: schemas/app_public/schema
-- requires: schemas/app_public/tables/companies/table

BEGIN;

CREATE TABLE app_public.facilities (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
    company_id uuid NOT NULL REFERENCES app_public.companies(id) ON DELETE CASCADE,
    name text
);

COMMIT;
