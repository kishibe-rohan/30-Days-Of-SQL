WITH t1 AS 
(
    SELECT id,login_date,
    LEAD(login_date,4) OVER(PARTITION BY id ORDER BY login_date) date_5
    FROM (SELECT DISTINCT * FROM Logins) b 
)

SELECT DISTINCT a.id,a.name 
FROM t1 
INNER JOIN accounts a 
ON t1.id = a.id
WHERE datediff(t1.date_5,login_date) = 4
ORDER BY id