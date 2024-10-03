-- Find employees who have worked on more than 2 projects.


SELECT 
    e.name, COUNT(p.projectname) AS num_projects
FROM
    emp_dataset e
        INNER JOIN
    proj_dataset p ON e.employeeid = p.employeeid
GROUP BY e.employeeid
HAVING COUNT(p.projectname) > 2;