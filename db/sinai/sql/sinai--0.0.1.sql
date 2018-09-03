\echo Use "CREATE EXTENSION sinai" to load this file. \quit
CREATE SCHEMA app_private;

GRANT USAGE ON SCHEMA app_private TO authenticated;

CREATE SCHEMA app_public;

GRANT USAGE ON SCHEMA app_public TO anonymous;

GRANT USAGE ON SCHEMA app_public TO authenticated;

CREATE TABLE app_public.companies (
 	id uuid PRIMARY KEY DEFAULT ( uuid_generate_v4() ),
	name text 
);

CREATE TABLE app_public.facilities (
 	id uuid PRIMARY KEY DEFAULT ( uuid_generate_v4() ),
	company_id uuid NOT NULL REFERENCES app_public.companies ( id ) ON DELETE CASCADE,
	name text 
);

CREATE TABLE app_public.users (
 	id uuid PRIMARY KEY DEFAULT ( uuid_generate_v4() ),
	display_name text NOT NULL,
	username text NOT NULL 
);