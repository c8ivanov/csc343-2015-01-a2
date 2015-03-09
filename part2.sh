#!/bin/bash

echo "Compiling java code"
javac TestAssignment2.java

wget -q http://www.cdf.toronto.edu/~csc343h/winter/assignments/a2/imdb.ddl -O imdb.ddl || exit 2
patch imdb.ddl < imdb.ddl.patch

PASSED_SPEC_SELECTED="$@"
SPEC_SELECTED="${PASSED_SPEC_SELECTED:-*}"

for spec in p2/$SPEC_SELECTED.spec.sh; do
  spec_basename=`basename $spec .spec.sh`
  # stdoutfile=`mktemp --tmpdir=/tmp p2-$spec_basename-out.XXX`
  stderrfile=`mktemp --tmpdir=/tmp p2-$spec_basename-err.XXX`

  fixture="p2/$spec_basename.sql"
  cat imdb.ddl $fixture | PGOPTIONS='--client-min-messages=warning' psql -q csc343h-$USER

  bash $spec 2>$stderrfile

  if [ -f p2/$spec_basename.ans ]; then
    expectations_file="p2/$spec_basename.ans"
    if [ -n "`diff -q $expectations_file $stderrfile`" ]; then
      echo "$(tput setaf 1)FAIL Part 2: test $spec_basename$(tput sgr0)"
      echo "Expected:"
      cat $expectations_file
      echo "but got:"
      cat $stderrfile
      echo "Output is available in $stderrfile"
      echo "You may want to run diff -u $expectations_file $stderrfile to see the difference."
      echo ""
    else
      echo "$(tput setaf 2)PASS Part 2: test $spec_basename$(tput sgr0)"
    fi
  else
    echo "$(tput setaf 3)NOT TESTED Part 2: $spec_basename$(tput sgr0)"
  fi
done

