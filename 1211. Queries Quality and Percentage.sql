# Write your MySQL query statement below
select query_name ,round(avg(rating/position),2) as quality,
ROUND( AVG( IF(RATING < 3, 1, 0) ) * 100, 2 ) as poor_query_percentage
from queries 
where query_name is not null
group by query_name;
