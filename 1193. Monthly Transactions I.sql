# Write your MySQL query statement below
select date_format(trans_date, '%Y-%m') as month,country,
count(id) as trans_count,
sum(state='approved') as approved_count,
sum(amount) as trans_total_amount,
sum(if(state='approved',amount,0)) as approved_total_amount
from transactions
group by month,country;
