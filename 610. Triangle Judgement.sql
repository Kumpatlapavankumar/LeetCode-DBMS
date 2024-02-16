# Write your MySQL query statement below
select *,
CASE
    when x+y>z and x+z>y and z+y>x
    then 'Yes' else 'No'
END as triangle
from triangle;
