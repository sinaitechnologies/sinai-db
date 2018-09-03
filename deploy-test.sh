#!/usr/bin/env bash

bak=$(pwd)

export PGPASSWORD=password

for x in $(find db -name sqitch.plan -exec dirname '{}' \; | grep -v node_modules)
do
 echo running inside of $x
 cd $x
 skitch dropdb $x-test-db
 skitch createdb $x-test-db
 skitch deploy $x-test-db
 cd $bak
done

cd $bak
