# Write your MySQL query statement below
select id,movie,description,rating from cinema 
where (id % 2) = 1 AND description NOT LIKE '%boring%'
order by rating desc;
