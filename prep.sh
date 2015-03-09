#!/usr/bin/env bash

wget -q http://www.cdf.toronto.edu/~csc343h/winter/assignments/a2/imdb.ddl -O imdb.ddl || exit 2
patch imdb.ddl < imdb.ddl.patch
