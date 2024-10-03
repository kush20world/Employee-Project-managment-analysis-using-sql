-- For each department, calculate the total number of employees hired in each year since,2018

SELECT 
    department,
    YEAR(e.hiredate) AS hire_year,
    COUNT(e.employeeid) AS total_hired
FROM
    emp_dataset e
WHERE
    YEAR(e.hiredate) >= 2018
GROUP BY department , hire_year
ORDER BY hire_year;

 