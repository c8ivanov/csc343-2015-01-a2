SET search_path TO imdb;

\echo Detect a single actor appearing in movies for three consecutive years

INSERT INTO people VALUES (1, 'Pitt, Brad');

INSERT INTO movies VALUES (1, 'A movie', 2000, 4.0);
INSERT INTO roles VALUES (1, 1, 'A role');

INSERT INTO movies VALUES (2, 'A movie', 2001, 4.0);
INSERT INTO roles VALUES (1, 2, 'A role');

INSERT INTO movies VALUES (3, 'A movie', 2002, 4.0);
INSERT INTO roles VALUES (1, 3, 'A role');

