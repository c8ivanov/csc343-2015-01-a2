SET search_path TO imdb;

\echo Correctly assign 3-tuples of movies to actors. Sort by person_id ascending.

INSERT INTO people VALUES (1, 'Pitt, Brad');

INSERT INTO movies VALUES (1, 'A movie', 2000, 4.0);
INSERT INTO roles VALUES (1, 1, 'A role');

INSERT INTO movies VALUES (2, 'A movie', 2001, 4.0);
INSERT INTO roles VALUES (1, 2, 'A role');

INSERT INTO movies VALUES (3, 'A movie', 2002, 4.0);
INSERT INTO roles VALUES (1, 3, 'A role');

INSERT INTO people VALUES (2, 'Depp, Johnny');

INSERT INTO movies VALUES (4, 'A movie', 2008, 4.0);
INSERT INTO roles VALUES (2, 4, 'A role');

INSERT INTO movies VALUES (5, 'A movie', 2009, 4.0);
INSERT INTO roles VALUES (2, 5, 'A role');

INSERT INTO movies VALUES (6, 'A movie', 2010, 4.0);
INSERT INTO roles VALUES (2, 6, 'A role');
