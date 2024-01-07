# Write your MySQL query statement below
update Salary set sex=
CASE sex
when 'm' then 'f'
else 'm'
END;
