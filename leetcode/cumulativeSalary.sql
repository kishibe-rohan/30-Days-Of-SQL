-- Solution 1

SELECT A.id,MAX(B.Month) AS Month,SUM(B.Salary) AS Salary 
FROM Employee A,Employee B 
WHERE A.id = B.id 
AND B.Month BETWEEN (A.Month - 3) AND (A.Month - 1)
GROUP BY A.id,A.Month 
ORDER BY Id,Month DESC;

-- Solution 2

WITH t1 AS 
(
    SELECT *,MAX(month) OVER(PARTITION BY id) AS recent_month 
    FROM employee 
)

SELECT id,month,
SUM(salary) 
OVER(PARTITION BY id ORDER BY month ROWS BETWEEN 2 PRECEEDING AND CURRENT ROW) AS salary
FROM t1
WHERE month < recent_month 
ORDER BY 1,2 DESC