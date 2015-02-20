SET search_path TO imdb;

INSERT INTO movies VALUES (1, 'A Movie', 2007, 4.0);

INSERT INTO keywords VALUES (1, 'foo');
INSERT INTO keywords VALUES (2, 'bar');

INSERT INTO movie_keywords VALUES (1, 1);
INSERT INTO movie_keywords VALUES (1, 2);

