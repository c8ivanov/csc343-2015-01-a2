SET search_path TO imdb;

INSERT INTO keywords VALUES (1, 'foo');
INSERT INTO keywords VALUES (2, 'bar');

INSERT INTO movies VALUES (1, 'One keyword movie', 2007, 4.0);
INSERT INTO movies VALUES (2, 'Two keyword movie', 2008, 1.0);
INSERT INTO movies VALUES (3, 'Two keyword movie', 2009, 4.0);

INSERT INTO movie_keywords VALUES (1, 1);

INSERT INTO movie_keywords VALUES (2, 1);
INSERT INTO movie_keywords VALUES (2, 2);

INSERT INTO movie_keywords VALUES (3, 1);
INSERT INTO movie_keywords VALUES (3, 2);

\echo "One keyword movies should have the average of 4, two keyword movies should have the average of 2.5";

