SET search_path TO imdb;

INSERT INTO people VALUES (1, 'Pitt, Brad');

INSERT INTO movies VALUES (1, 'A Movie with Brad Pitt', 2008, 4.0);
INSERT INTO roles VALUES (1, 1, 'as himself');

INSERT INTO people VALUES (2, 'Writer and Composer, bradtimes=1 by unique movie_id');
INSERT INTO writers VALUES (1, 2); 
INSERT INTO composers VALUES (1, 2); 
