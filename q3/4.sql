SET search_path TO imdb;

\echo A person appearing as director, writer, and actor. 5 people, 7? positions

INSERT INTO movies VALUES (1, 'Inglourious Basterds', 2009, 9.0);

INSERT INTO people VALUES (1, 'Pitt, Brad');
INSERT INTO people VALUES (2, 'Tarantino, Quentin');
INSERT INTO people VALUES (3, 'Roth, Eli');
INSERT INTO people VALUES (4, 'Richardson, Robert');
INSERT INTO people VALUES (5, 'Ramos, Mary');


INSERT INTO cinematographers VALUES (1, 4);
INSERT INTO composers VALUES (1, 5);
INSERT INTO directors VALUES (1, 3);
INSERT INTO directors VALUES (1, 2);
INSERT INTO writers VALUES (1, 2);

INSERT INTO roles VALUES (1, 1, 'Lt. Aldo Raine');
INSERT INTO roles VALUES (2, 1, 'American Soldier in Pride of Nation (uncredited)');
