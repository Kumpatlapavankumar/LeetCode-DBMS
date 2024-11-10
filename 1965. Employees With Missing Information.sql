# Write your MySQL query statement below
select e.employee_id
from Employees e
left join salaries s 
on 
e.employee_id=s.employee_id
where salary is null
union 
select s.employee_id
from employees e
right join 
salaries s
on 
e.employee_id=s.employee_id
where name is null
order by employee_id
