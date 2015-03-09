#!/usr/bin/env bash

PASSED_RUN_SEQUENCE=("$@")
RUN_SEQUENCE="${PASSED_RUN_SEQUENCE:-1 2 3 4 5 6 7}"

echo "Run sequence: $RUN_SEQUENCE"

DATABASE="csc343h-$USER"


for qnum in $RUN_SEQUENCE; do
    if [ ! -f "q$qnum.sql" ]
    then
        echo "Can't find file: q$qnum.sql"
        continue
    fi
    for fixture in q"$qnum"/*.sql; do
        echo "Fixture $fixture"
        cat imdb.ddl "$fixture" | PGOPTIONS='--client-min-messages=warning' psql -q "$DATABASE"
        echo "Q$qnum script"
        psql csc343h-"$USER" < q"$qnum.sql"
    done
done


