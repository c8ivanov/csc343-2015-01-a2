SET search_path TO imdb;

\echo Shyamalan, M. Night made a movie and all the known people helped

INSERT INTO people VALUES (1, 'Shyamalan, M. Night');

INSERT INTO movies VALUES
(5, 'Written and directed by Shyamalan', 2006, 10.0);

INSERT INTO writers VALUES (5, 1);
INSERT INTO directors VALUES (5, 1);

INSERT INTO people VALUES
(2, 'Willis, Bruce'), -- actor, as Dr Malcom Crowe
(3, 'Osment, Haley Joel'), -- actor, as Cole Sear
(4, 'Fujimoto, Tak'), -- cinematography
(5, 'Howard, James Newton'); -- composer

INSERT INTO roles VALUES
(2, 5, 'Dr Malcom Crowe'),
(3, 5, 'Cole Sear');

INSERT INTO cinematographers VALUES
(5, 4);

INSERT INTO composers VALUES (5, 5);

