# Write your MySQL query statement below
#customer details
SELECT customer_id FROM Customer
GROUP BY customer_id HAVING
COUNT(DISTINCT product_key) = (
SELECT COUNT(product_key) FROM Product);
