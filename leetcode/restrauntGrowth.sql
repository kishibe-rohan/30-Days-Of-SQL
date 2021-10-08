SELECT visited_on,SUM(amount) OVER(ORDER BY visited_on rows 6 preceding),
ROUND(AVG(amount) OVER(ORDER BY visited_on rows 6 preceding),2)
FROM
(
    SELECT visited_on,sum(AMOUNT) as AMOUNT 
    FROM CUSTOMER 
    GROUP BY visited_on
    ORDER BY visited_on
) a
ORDER BY visited_on offset 6 rows 