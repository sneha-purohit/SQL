# https://leetcode.com/problems/customer-placing-the-largest-number-of-orders

Create table If Not Exists orders (order_number int, customer_number int);
Truncate table orders;
insert into orders (order_number, customer_number) values ('1', '1');
insert into orders (order_number, customer_number) values ('2', '2');
insert into orders (order_number, customer_number) values ('3', '3');
insert into orders (order_number, customer_number) values ('4', '3');

SELECT customer_number 
FROM orders
GROUP BY customer_number 
ORDER BY count(order_number) DESC limit 1