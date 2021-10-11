-- Titles of all movies directed by Steven Speilberg

SELECT title 
FROM Movie
WHERE director = 'Steven Spielberg';

--  Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order.

SELECT DISTINCT year 
FROM Movie 
INNER JOIN Rating 
ON Movie.mId = Rating.mId 
WHERE stars IN (4,5)
ORDER BY year;

-- Find the titles of all movies that have no ratings. 
SELECT title 
FROM Movie 
WHERE mId NOT IN (SELECT mId FROM Rating);

-- Find the names of all reviewers who have ratings with a NULL value for the date. 

SELECT name 
FROM Reviewer 
INNER JOIN Rating 
USING (rId)
WHERE ratingDate IS NULL;

