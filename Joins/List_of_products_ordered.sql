# https://leetcode.com/problems/list-the-products-ordered-in-a-period/

create database orders;
use orders;
Create table If Not Exists Products (product_id int, product_name varchar(40), product_category varchar(40));
Create table If Not Exists Orders (product_id int, order_date date, unit int);
Truncate table Products;
insert into Products (product_id, product_name, product_category) values ('1', 'Leetcode Solutions', 'Book');
insert into Products (product_id, product_name, product_category) values ('2', 'Jewels of Stringology', 'Book');
insert into Products (product_id, product_name, product_category) values ('3', 'HP', 'Laptop');
insert into Products (product_id, product_name, product_category) values ('4', 'Lenovo', 'Laptop');
insert into Products (product_id, product_name, product_category) values ('5', 'Leetcode Kit', 'T-shirt');
Truncate table Orders;
insert into Orders (product_id, order_date, unit) values ('1', '2020-02-05', '60');
insert into Orders (product_id, order_date, unit) values ('1', '2020-02-10', '70');
insert into Orders (product_id, order_date, unit) values ('2', '2020-01-18', '30');
insert into Orders (product_id, order_date, unit) values ('2', '2020-02-11', '80');
insert into Orders (product_id, order_date, unit) values ('3', '2020-02-17', '2');
insert into Orders (product_id, order_date, unit) values ('3', '2020-02-24', '3');
insert into Orders (product_id, order_date, unit) values ('4', '2020-03-01', '20');
insert into Orders (product_id, order_date, unit) values ('4', '2020-03-04', '30');
insert into Orders (product_id, order_date, unit) values ('4', '2020-03-04', '60');
insert into Orders (product_id, order_date, unit) values ('5', '2020-02-25', '50');
insert into Orders (product_id, order_date, unit) values ('5', '2020-02-27', '50');
insert into Orders (product_id, order_date, unit) values ('5', '2020-03-01', '50');


select product_name, sum(unit) as unit
from Products inner join Orders 
using(product_id)
where month(order_date) = 2 and year(order_date) = 2020
group by product_name
having unit >= 100;
