-- desafio 1
SELECT * FROM movies_db.genres;
INSERT INTO `movies_db`.`genres` (`name`, `ranking`, `active`) VALUES ('ivestigación', '13', '1');
UPDATE `movies_db`.`genres` SET `name` = 'ivestigación cientifica' WHERE (`id` = '13');
DELETE FROM `movies_db`.`genres` WHERE (`id` = '13');
SELECT * FROM movies;
SELECT first_name, last_name, rating FROM actors;
SELECT title AS titulo FROM series;

-- desafio 2
SELECT first_name, last_name FROM actors WHERE rating > 7.5;
SELECT title, rating, awards FROM movies WHERE rating > 7.5 AND awards > 2;
SELECT title, rating FROM movies ORDER BY rating;

-- desafio 3
SELECT title FROM movies LIMIT 3;
SELECT * FROM movies ORDER BY rating DESC LIMIT 5;
SELECT * FROM movies ORDER BY rating DESC LIMIT 5 OFFSET 5;
SELECT * FROM actors LIMIT 10;
SELECT * FROM actors LIMIT 10 OFFSET 20;

-- desafio 4
SELECT title, rating FROM MOVIES WHERE title LIKE "%Harry Potter%";
SELECT * FROM actors WHERE first_name LIKE "Sam%";
SELECT * FROM movies WHERE release_date BETWEEN "2004-01-01" AND "2008-12-31";