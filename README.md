
# getting started

[![Build Status](https://travis-ci.org/sinaitechnologies/sinai-db.svg?branch=master)](https://travis-ci.org/sinaitechnologies/sinai-db)

# start the postgres db process

First you'll want to start the postgres docker (you can also just use `docker-compose up -d`):

```sh
make up
```
# install the Postgres extensions

Now that the postgres process is running, install the extensions:

```sh
make install
```

This basically `ssh`s into the postgres instance with the `db/` folder mounted as a volume, and installs the bundled sql code as pgxn extensions.

# now you can deploy code

Now you can use `CREATE EXTENSION` in your sql projects!

If you're working on the GraphQL sinai app, you should just go into this repository, `cd db/sinai` and then use `skitch` to create and deploy code to the sinai-db:

```sh
PGPASSWORD=password skitch createdb sinai-db
PGPASSWORD=password skitch deploy sinai-db
```

# create the App User if you are writing GraphQL

You can open up a Postgres query UI as the `postgres` user (with password `password`) and run the code from `./bootstrap-users.sql`.

This creates a user login with `app_user` (and `app_password`) to login with apps that you build. Technically you can use any user or password you like, as long as it's granted similarly.

# run a quick GraphQL server

make sure to have postgraphile installed

```sh
npm install -g postgraphile
```

deploy code

```sh
cd db/sinai
PGPASSWORD=password skitch createdb sinai-db
PGPASSWORD=password skitch deploy sinai-db
```

run it

```sh
PGPASSWORD=password postgraphile -c postgres://app_user:app_password@localhost/sinai-db --schema app_public
#PGPASSWORD=password postgraphile -c postgres://postgres:password@localhost/sinai-db --schema app_public
```
