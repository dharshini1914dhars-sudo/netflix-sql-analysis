USE netflix_db;
SELECT * FROM netflix_titles LIMIT 5;

SELECT type, COUNT(*) as total
FROM netflix_titles
GROUP BY type;

SELECT listed_in, COUNT(*) as total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;

SELECT release_year, COUNT(*) as total
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year DESC
LIMIT 10;

SELECT country, COUNT(*) as total
FROM netflix_titles
WHERE country IS NOT NULL AND country != ''
GROUP BY country
ORDER BY total DESC
LIMIT 10;

SELECT rating, COUNT(*) as total
FROM netflix_titles
WHERE rating IS NOT NULL AND rating != ''
GROUP BY rating
ORDER BY total DESC;