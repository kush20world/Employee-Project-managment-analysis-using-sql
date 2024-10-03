--  Compare the average salary of employees who joined in 2020 and later with those who joined earlier
 
 SELECT 
    CASE 
        WHEN YEAR(e.hiredate) >= 2020 THEN '2020 and later' 
        ELSE 'Before 2020' 
    END AS hire_period,
    round(avg(e.salary), 2) AS average_salary
FROM emp_dataset e
GROUP BY hire_period;
