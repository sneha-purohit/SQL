# https://leetcode.com/problems/product-sales-analysis-iii/description/

Create table If Not Exists Sales (sale_id int, product_id int, year int, quantity int, price int);
Truncate table Sales;
insert into Sales (sale_id, product_id, year, quantity, price) values ('1', '100', '2008', '10', '5000');
insert into Sales (sale_id, product_id, year, quantity, price) values ('2', '100', '2009', '12', '5000');
insert into Sales (sale_id, product_id, year, quantity, price) values ('7', '200', '2011', '15', '9000');

select product_id, year as first_year, quantity,price
from Sales
where (product_id, year) in (
    select product_id , min(year) as f
    from sales
    group by product_id
)