SET search_path TO imdb;

INSERT INTO people VALUES (1, 'Pitt, Brad');

INSERT INTO movies VALUES (1, 'A Movie with Brad Pitt', 2008, 4.0);
INSERT INTO roles VALUES (1, 1, 'as himself');

INSERT INTO movies VALUES (2, 'Yet Another Movie with Brad Pitt', 2009, 3.8);
INSERT INTO roles VALUES (1, 2, 'as himself');


INSERT INTO people VALUES (2, 'Writer in one and Composer in Another, bradtimes=2 by different movie_id');
INSERT INTO writers VALUES (1, 2); 
INSERT INTO composers VALUES (2, 2); 
