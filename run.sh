#!/bin/bash

wget -q http://www.cdf.toronto.edu/~csc343h/winter/assignments/a2/imdb.ddl -O imdb.ddl || exit 2
patch imdb.ddl < imdb.ddl.patch

PASSED_RUN_SEQUENCE="$@"
RUN_SEQUENCE="${PASSED_RUN_SEQUENCE:-1 2 3 4 5 6 7}"

echo "Run sequence: "$RUN_SEQUENCE

for qnum in $RUN_SEQUENCE; do
  echo "Running Q$qnum"

  for fixture in $(ls q$qnum/*.sql); do
    fixture_basename=`basename $fixture '.sql'`
    cat imdb.ddl $fixture | PGOPTIONS='--client-min-messages=warning' psql -q csc343h-$USER

    tmpfile=`mktemp --tmpdir=/tmp q$qnum-t$fixture_basename.XXX`
    errfile=`mktemp --tmpdir=/tmp q$qnum-t$fixture_basename-errors.XXX`

    PGOPTIONS='--client-min-messages=warning' psql --set ON_ERROR_STOP=1 -f q$qnum.sql csc343h-$USER > $tmpfile 2> $errfile

    exit_code=$?

    if [ $exit_code -ne 0 ]; then
      echo "$(tput setaf 1)FAIL Q$qnum: $fixture:$(tput sgr0) Running the solution file resulted in an error (code $exit_code, see http://www.postgresql.org/docs/9.3/static/app-psql.html#AEN87119). Below is the psql output:"
      cat $tmpfile
      echo ""
      cat $errfile
      echo "$(tput setaf 3)Aborted checking the results for Q$qnum: $fixture$(tput sgr0)"
      continue
    fi

    # Borrowed directly from the autotester code
    sed -i '/^SET/d' $tmpfile
    sed -i '/^DROP VIEW/d' $tmpfile
    sed -i '/^CREATE VIEW/d' $tmpfile

    was_tested=0

    if [ -f q$qnum/`basename $fixture '.sql'`.ans ]; then
      echo ""
      cat $fixture
      echo ""
      cat q$qnum/`basename $fixture '.sql'`.ans
      echo ""

      if [ -n "`diff -q q$qnum/$fixture_basename.ans $tmpfile`" ]; then
        echo "$(tput setaf 1)FAIL Q$qnum: $fixture$(tput sgr0)"
        echo "Expected:"
        cat q$qnum/$fixture_basename.ans
        echo "but got:"
        cat $tmpfile
        echo "Output is available in $tmpfile"
        echo "You may want to run diff -q q$qnum/$fixture_basename.ans $tmpfile to see the difference." 
        echo ""
      else
        echo "$(tput setaf 2)PASS Q$qnum: $fixture$(tput sgr0)"
      fi
      was_tested=1
    fi

    if [ $was_tested -eq 0 ]; then
      echo "$(tput setaf 3)NOT TESTED Q$qnum: $fixture:$(tput sgr0) Output is available in $tmpfile"
    fi

  done
done


