SET search_path TO imdb;

\echo Correctly reduce appearances in multiple movies within one year to the movie with the title that comes first alphabetically
\echo Expected:          1 | Pitt, Brad |  2000 | Correct movie |  2001 | Correct movie |  2002 | Correct movie

INSERT INTO people VALUES (1, 'Pitt, Brad');

INSERT INTO movies VALUES (1, 'Correct movie', 2000, 4.0);
INSERT INTO roles VALUES (1, 1, 'A role');

INSERT INTO movies VALUES (2, 'Incorrect movie', 2001, 4.0);
INSERT INTO roles VALUES (1, 2, 'A role');

INSERT INTO movies VALUES (4, 'Correct movie', 2001, 4.0);
INSERT INTO roles VALUES (1, 4, 'A role');

INSERT INTO movies VALUES (3, 'Correct movie', 2002, 4.0);
INSERT INTO roles VALUES (1, 3, 'A role');

