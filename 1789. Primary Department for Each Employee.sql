# Write your MySQL query statement below
select e.employee_id ,e.department_id from employee e 
where e.primary_flag='Y' or e.employee_id 
in
(select employee_id from employee 
group by employee_id 
having count(distinct department_id)=1);
