# Write your MySQL query statement below
select stock_name,
sum(case when operation='SELL' then price else -price end) as capital_gain_loss
from stocks
group by stock_name;
