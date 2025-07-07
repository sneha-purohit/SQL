# https://leetcode.com/problems/consecutive-numbers


Create table If Not Exists Logs (id int, num int);
Truncate table Logs;
insert into Logs (id, num) values ('1', '1');
insert into Logs (id, num) values ('2', '1');
insert into Logs (id, num) values ('3', '1');
insert into Logs (id, num) values ('4', '2');
insert into Logs (id, num) values ('5', '1');
insert into Logs (id, num) values ('6', '2');
insert into Logs (id, num) values ('7', '2');


with cte as
(SELECT *, LEAD(num,1) over () as next_1, lead(num,2) over() as next_2
FROM Logs 
)
select distinct num as ConsecutiveNums
from cte
where num = next_1
and num =next_2