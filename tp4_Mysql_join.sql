-- tp 4


SELECT movies.id, title, genre_id, genres.id, name 
FROM movies, genres 
WHERE genre_id = genres.id;

-- micro desafio 1 join
-- join
SELECT movies.id, title, genre_id, genres.id, name 
FROM movies
INNER JOIN genres ON  genre_id = genres.id;
-- left join
SELECT movies.id, title, genre_id, genres.id, name 
FROM movies
LEFT JOIN genres ON  genre_id = genres.id;
-- right join
SELECT movies.id, title, genre_id, genres.id, name 
FROM movies
RIGHT JOIN genres ON  genre_id = genres.id;

SELECT title, name
FROM series
INNER JOIN genres ON genre_id = genres.id;

SELECT title, first_name, last_name
FROM movies, actor_movie, actors
WHERE movies.id = movie_id
AND actor_id = actors.id;
-- join
SELECT title, first_name, last_name
FROM movies
INNER JOIN actor_movie ON movies.id = movie_id
INNER JOIN actors ON actor_id = actors.id;

SELECT title, first_name, last_name
FROM episodes
INNER JOIN actor_episode ON episodes.id = episode_id
INNER JOIN actors ON actor_id = actors.id;

-- micro desafio 2
SELECT distinct first_name, last_name
FROM movies
INNER JOIN actor_movie ON movies.id = movie_id
INNER JOIN actors ON actors.id = actor_id
WHERE title LIKE "%Harry%";

SELECT distinct first_name, last_name
FROM movies
INNER JOIN actor_movie ON movies.id = movie_id
INNER JOIN actors ON actors.id = actor_id
WHERE title LIKE "%Guerra%";

-- micro desafio 3
SELECT movies.id, title, ifnull(name, "No tiene genero")AS genero 
FROM movies
LEFT JOIN genres ON  genre_id = genres.id;

-- micro desafio 4
SELECT title, datediff(end_date, release_date) AS Duración
FROM series;

-- micro desafio 5
SELECT first_name
FROM actors
WHERE length(first_name) > 6;

SELECT count(*) AS "Total"
FROM episodes;

SELECT series.title, seasons.title
FROM series
INNER JOIN seasons ON series.id = serie_id;

SELECT series.title, count(*) AS temporadas
FROM seasons
INNER JOIN series ON series.id = seasons.serie_id
GROUP BY series.title
HAVING count(*);






