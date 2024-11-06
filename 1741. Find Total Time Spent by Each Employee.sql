# Write your MySQL query statement below
select event_day as day,emp_id,SUM(out_time-in_time) as total_time
from employees 
group by
emp_id,event_day;
