SET search_path TO imdb;

\echo Safely ignore movies that have no writers.
\echo Expected: Writer, Super | A 1974 Movie, super |      5 | 1970s 

INSERT INTO movies VALUES (1, 'A 1970 Movie, non-super', 1970, 3.0);
INSERT INTO movies VALUES (2, 'A 1974 Movie, super', 1974, 5.0);
INSERT INTO movies VALUES (3, 'A 2314 Movie: No writer', 2314, 5.0);

INSERT INTO people VALUES (1, 'Writer, Super');
INSERT INTO writers VALUES (2, 1);

INSERT INTO people VALUES (2, 'Writer, Non-Super');
INSERT INTO writers VALUES (1, 2);

INSERT INTO people VALUES (3, 'Writer, Only-Half-Super (within decade)');
INSERT INTO writers VALUES (1, 3);
INSERT INTO writers VALUES (2, 3);

\echo Expected: Writer, Super | A 1974 Movie, super |      5 | 1970s

