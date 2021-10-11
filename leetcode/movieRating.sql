(
    SELECT name AS results 
    FROM Movie_Rating
    INNER JOIN Users 
    ON Movie_Rating.user_id = Users.user_id
    GROUP BY Movie_Rating.user_id
    ORDER BY COUNT(1) DESC,name 
    LIMIT 1
)
UNION ALL 
(
    SELECT title AS results 
    FROM Movie_Rating
    INNER JOIN Movies 
    ON Movie_Rating.movie_id = Movies.movie_id
    WHERE LEFT(created_at,7) = "2020-02"
    GROUP BY Movie_Rating.movie_id
    ORDER BY AVG(rating) DESC,title 
    LIMIT 1
)