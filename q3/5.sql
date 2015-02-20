SET search_path TO imdb;

\echo A movie with one actor, two roles.

INSERT INTO movies VALUES (1, 'A movie', 2004, 10.0);

INSERT INTO people VALUES (1, 'Guy, Some');

INSERT INTO roles VALUES (1, 1, 'Himself');
INSERT INTO roles VALUES (1, 1, 'Not himself');


