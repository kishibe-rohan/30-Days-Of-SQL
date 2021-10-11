WITH T1 AS (
    SELECT company_id,employee_id,employee_name,salary AS sal,MAX(salary) OVER(PARITION BY company_id) max_sal
    FROM salaries
)

SELECT company_id,employee_id,employee_name,
CASE WHEN t1.max_sal < 1000 then t1.sal 
WHEN t1.max_sal BETWEEN 1000 AND 10000 then ROUND(t1.sal  * .76,0)
ELSE ROUND(t1.sal * .51,0)
END AS salary 
FROM t1