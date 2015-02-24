SET search_path TO imdb;

\echo Shyamalan, M. Night has made a few movies by himself.

INSERT INTO people VALUES (1, 'Shyamalan, M. Night');

INSERT INTO movies VALUES
(1, 'Cinematography by Shyamalan', 1990, 4.0),
(2, 'Score by Shyamalan', 1993, 5.0),
(3, 'Directed by Shyamalan', 1997, 6.0),
(4, 'Starring Shyamalan', 2000, 7.0),
(5, 'Written by Shyamalan', 2006, 10.0);

INSERT INTO cinematographers VALUES (1, 1);
INSERT INTO composers VALUES (2, 1);
INSERT INTO directors VALUES (3, 1);
INSERT INTO roles VALUES (1, 4, 'The director');
INSERT INTO writers VALUES (5, 1);


