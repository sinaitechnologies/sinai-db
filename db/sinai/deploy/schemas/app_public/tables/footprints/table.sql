-- Deploy schemas/app_public/tables/footprints/table to pg

-- requires: schemas/app_public/schema
-- requires: schemas/app_public/tables/facilities/table

BEGIN;

CREATE TABLE app_public.footprints (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
    facility_id uuid NOT NULL REFERENCES app_public.facilities(id) ON DELETE CASCADE,
    score int,
    year int
);

COMMIT;
