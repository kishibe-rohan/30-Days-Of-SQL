WITH t1 AS 
(
    SELECT DATE_FORMAT(pay_date,'%Y-%m') AS pay_month,department_id,
    AVG(amount) OVER(PARTITION BY MONTH(pay_date),department_id) AS dept_avg,
    AVG(amount) OVER(PARTITION BY MONTH(pay_date)) AS company_avg
    FROM Salary s 
    JOIN Employee e 
    USING(employee_id)
)

SELECT DISTINCT pay_month,department_id,
CASE WHEN dept_avg > company_avg THEN 'higher'
WHEN dept_avg = company_avg THEN 'same'
ELSE 'lower'
END AS comparison 
FROM t1 
ORDER BY pay_month DESC;