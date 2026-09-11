USE project_movie_database;
show tables;
DESC directors;
desc movies;

-- (a): Get all data about movies
select * from movies;

-- (b): Get all data about directors
select * from directors;

-- (c): Count the number of movies in IMDb
SELECT COUNT(*) AS total_movies
FROM movies;

-- (d): Find 3 specific directors
SELECT *
FROM directors
WHERE name IN ('James Cameron', 'Luc Besson', 'John Woo');

-- (e): Find all directors whose name starts with S
SELECT *
FROM directors
WHERE name LIKE 'S%';

-- (f): Count the female directors
SELECT COUNT(*) AS female_directors
FROM directors
WHERE gender = 1;

-- (g): Find the 10th female director
SELECT *
FROM directors
WHERE gender = 1
ORDER BY id
LIMIT 1 OFFSET 9;

-- (h): Find the 3 most popular movies
SELECT original_title, popularity
FROM movies
ORDER BY popularity DESC
LIMIT 3;

-- (i): Find the 3 most bankable movies(highest revenue)
SELECT original_title, revenue
FROM movies
WHERE revenue IS NOT NULL
ORDER BY revenue DESC
LIMIT 3;

-- (j): Find the movie with the highest average vote since January 1, 2000
SELECT original_title, release_date, vote_average
FROM movies
WHERE release_date >= '2000-01-01'
ORDER BY vote_average DESC
LIMIT 1;

-- (k): Find the movies directed by Brenda Chapman
SELECT *
FROM directors
WHERE name LIKE '%Brenda Chapman%';

SELECT COUNT(*) AS total_directors
FROM directors;

SELECT COUNT(DISTINCT director_id) AS directors_with_movies
FROM movies;

SELECT d.name, m.original_title
FROM directors d
JOIN movies m
    ON d.id = m.director_id
WHERE d.name = 'Brenda Chapman';
-- No movie is linked to Brenda Chapman in the movies table

-- (l): Find the Director who made the most movies
SELECT d.name, COUNT(*) AS movie_count
FROM directors d
JOIN movies m
    ON d.id = m.director_id
GROUP BY d.id, d.name
ORDER BY movie_count DESC
LIMIT 1;

-- (m): Find the most bankable director
SELECT d.name, SUM(m.revenue) AS total_revenue
FROM directors d
JOIN movies m
    ON d.id = m.director_id
GROUP BY d.id, d.name
ORDER BY total_revenue DESC
LIMIT 1;
