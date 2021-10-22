-- Write a query to print the respective department name and number of students majoring in each
-- department for all departments in the department table (even ones with no current students).

SELECT dept_name,COUNT(s.dept_id) AS student_number 
FROM department d
LEFT JOIN student s 
ON d.dept_id = s.dept_id 
GROUP BY d.dept_id 
ORDER BY count(s.dept_id) DESC,dept_name 