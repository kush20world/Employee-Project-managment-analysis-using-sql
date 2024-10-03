-- :Retrieve the details of all employees working on projects, including project name, department, start date, and end date

SELECT 
    e.name, e.Department, p.projectname, p.startdate, p.enddate
FROM
    emp_dataset e
        JOIN
    proj_dataset p ON e.employeeid = p.employeeid;