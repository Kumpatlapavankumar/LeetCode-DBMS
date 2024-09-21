# Write your MySQL query statement below
select activity_date as day,count(distinct(user_id)) as active_users from Activity
where activity_date between DATE_SUB('2019-07-27',Interval 29 day) and '2019-07-27'
group by activity_date;