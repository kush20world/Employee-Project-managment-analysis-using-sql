-- Identify which manager has the highest number of employees working on projects.


SELECT 
    m.ManagerName, COUNT(e.Name) AS num_of_emp
FROM
    mang_dataset m
        JOIN
    dept_dataset d ON m.departmentid = d.departmentid
        JOIN
    emp_dataset e ON d.DepartmentName = e.department
        JOIN
    proj_dataset p ON e.employeeid = p.employeeid
GROUP BY m.ManagerName
ORDER BY num_of_emp DESC
LIMIT 1;

