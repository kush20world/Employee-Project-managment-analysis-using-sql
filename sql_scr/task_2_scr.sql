-- Calculate the average salary for each department.

select Department, round(avg(salary), 2)
from emp_dataset e 
group by Department;