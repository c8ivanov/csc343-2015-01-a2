SET search_path TO imdb;

\echo Correctly deduplicate multiple acting hattricks (non-disjoint)

INSERT INTO people VALUES (1, 'Pitt, Brad');

INSERT INTO movies VALUES (1, 'Incorrect movie', 2000, 4.0);
INSERT INTO roles VALUES (1, 1, 'A role');

INSERT INTO movies VALUES (2, 'Incorrect movie', 2001, 4.0);
INSERT INTO roles VALUES (1, 2, 'A role');

INSERT INTO movies VALUES (3, 'Incorrect movie', 2002, 4.0);
INSERT INTO roles VALUES (1, 3, 'A role');

INSERT INTO movies VALUES (4, 'Correct movie', 2001, 4.0);
INSERT INTO roles VALUES (1, 4, 'A role');

INSERT INTO movies VALUES (5, 'Correct movie', 2002, 4.0);
INSERT INTO roles VALUES (1, 5, 'A role');

INSERT INTO movies VALUES (6, 'Correct movie', 2003, 4.0);
INSERT INTO roles VALUES (1, 6, 'A role');
