-- :Find the 5 highest-paid employees and their department.

select name, Department, Salary
from emp_dataset
order by salary desc limit 5;