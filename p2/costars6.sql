SET search_path TO imdb;

INSERT INTO people VALUES 
(1, 'Pitt, Brad'),
(2, 'Guy, Other'),
(3, 'Girl, Other');

INSERT INTO movies VALUES (1, 'A movie with Brad Pitt', 2005, 10.0);

INSERT INTO roles VALUES
(1, 1, 'as himself'),
(3, 1, 'The girl');

