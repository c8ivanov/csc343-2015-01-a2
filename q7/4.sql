SET search_path TO imdb;

\echo Keep people that have not participated in Shyamalan''s movies

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

INSERT INTO people VALUES
(6, 'Tarantino, Quentin'),
(7, 'Roth, Eli'),
(8, 'Pitt, Brad');

INSERT INTO movies VALUES (6, 'Inglourious Basterds', 2009, 10.0);

INSERT INTO directors VALUES
(6, 6),
(6, 7);

INSERT INTO writers VALUES (6, 6);

INSERT INTO roles VALUES (8, 6, 'Lt Aldo Raine');
