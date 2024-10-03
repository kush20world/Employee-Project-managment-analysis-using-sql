--  List all employees, along with their department name, salary, and manager name.


SELECT 
    e.name, e.salary, m.ManagerName
FROM
    emp_dataset e
        JOIN
    proj_dataset p ON p.employeeid = e.employeeid
        JOIN
    dept_dataset d ON e.Department = d.DepartmentName
        JOIN
    mang_dataset m ON d.DepartmentID = m.DepartmentID;


