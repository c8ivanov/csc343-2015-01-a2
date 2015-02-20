#!/bin/bash

wget -q http://www.cdf.toronto.edu/~csc343h/winter/assignments/a2/imdb.ddl -O imdb.ddl || exit 2
patch imdb.ddl < imdb.ddl.patch

PASSED_RUN_SEQUENCE="$@"
RUN_SEQUENCE="${PASSED_RUN_SEQUENCE:-1 2 3 4 5 6 7}"

echo "Run sequence: "$RUN_SEQUENCE

for qnum in $RUN_SEQUENCE; do
  for fixture in $(ls q$qnum/*.sql); do
    echo "Fixture $fixture"
    cat imdb.ddl $fixture | PGOPTIONS='--client-min-messages=warning' psql -q csc343h-$USER
    echo "Q$qnum script"
    psql csc343h-$USER < q$qnum.sql
  done
done


