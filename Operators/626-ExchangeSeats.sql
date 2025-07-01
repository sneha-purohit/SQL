# https://leetcode.com/problems/exchange-seats

Create table If Not Exists Seat (id int, student varchar(255));
Truncate table Seat;
insert into Seat (id, student) values ('1', 'Abbot');
insert into Seat (id, student) values ('2', 'Doris');
insert into Seat (id, student) values ('3', 'Emerson');
insert into Seat (id, student) values ('4', 'Green');
insert into Seat (id, student) values ('5', 'Jeames');

# Write your MySQL query statement below
select 
     CASE 
        when
          id = (select max(id) from Seat) and mod(id, 2) =1 then id
        when
          mod(id, 2) =1 then id + 1
        else
           id - 1
    end as id , student         
from Seat
order by id;