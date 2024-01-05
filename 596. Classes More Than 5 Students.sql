# Write your MySQL query statement below
select class from Courses 
group by class having
 COUNT(student) >= 5;
