SET search_path TO imdb;

\echo Include super writers with movies in different decades, exclude writers with non-super movies in different decades

INSERT INTO movies VALUES (1, 'A 1970 Movie, non-super', 1970, 3.0);
INSERT INTO movies VALUES (2, 'A 1974 Movie, super', 1974, 5.0);
INSERT INTO movies VALUES (3, 'A 2015 Movie, super', 2015, 4.0);

INSERT INTO people VALUES (1, 'Writer, Super');
INSERT INTO writers VALUES (2, 1);

INSERT INTO people VALUES (2, 'Writer, Non-Super');
INSERT INTO writers VALUES (1, 2);

INSERT INTO people VALUES (3, 'Writer, Only-Half-Super (within decade)');
INSERT INTO writers VALUES (1, 3);
INSERT INTO writers VALUES (2, 3);

INSERT INTO people VALUES (4, 'Writer, Super (cross decade)');
INSERT INTO writers VALUES (2, 4);
INSERT INTO writers VALUES (3, 4);

INSERT INTO people VALUES (5, 'Writer, Not Really Super (cross decade)');
INSERT INTO writers VALUES (1, 5);
INSERT INTO writers VALUES (3, 5);
