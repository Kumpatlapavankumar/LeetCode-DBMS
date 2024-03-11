# Write your MySQL query statement below
select u.name as name,sum(t.amount) as balance from transactions t 
left join users u 
on 
u.account=t.account
group by u.name
having sum(t.amount)>10000;
