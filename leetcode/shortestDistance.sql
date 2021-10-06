SELECT min(abs(abs(a.x) - abs(a.next_closest))) AS shortest 
FROM 
(
    SELECT *,
    LEAD(X) OVER(ORDER BY x) AS next_closest
    FROM point
)a;