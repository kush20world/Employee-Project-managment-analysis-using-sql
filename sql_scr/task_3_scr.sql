-- Identify the department with the highest average salary.

SELECT 
    Department, ROUND(AVG(salary), 1) AS avg_salary
FROM
    emp_dataset
GROUP BY Department
ORDER BY avg_salary DESC
LIMIT 1;