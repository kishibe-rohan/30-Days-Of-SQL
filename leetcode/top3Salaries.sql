SELECT a.department,a.employee,a.salary
FROM 
(
    SELECT d.name AS department,e.name AS employee,salary,
    DENSE_RANK() OVER(PARTITION BY d.name ORDER BY salary DESC) AS rk 
    FROM Employee e 
    JOIN Department d
    ON e.department_id = d.id 
)a 
WHERE a.rk < 4