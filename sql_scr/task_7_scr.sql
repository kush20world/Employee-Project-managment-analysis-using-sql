-- For each manager, list their employees and the projects those employees are assigned to.

SELECT 
    m.ManagerName, e.Name, p.ProjectName
FROM
    mang_dataset m
        JOIN
    dept_dataset d ON m.departmentid = d.departmentid
        JOIN
    emp_dataset e ON d.DepartmentName = e.department
        JOIN
    proj_dataset p ON e.employeeid = p.employeeid;

