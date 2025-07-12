# https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends

Create table If Not Exists RequestAccepted (requester_id int not null, accepter_id int null, accept_date date null);
Truncate table RequestAccepted;
insert into RequestAccepted (requester_id, accepter_id, accept_date) values ('1', '2', '2016/06/03');
insert into RequestAccepted (requester_id, accepter_id, accept_date) values ('1', '3', '2016/06/08');
insert into RequestAccepted (requester_id, accepter_id, accept_date) values ('2', '3', '2016/06/08');
insert into RequestAccepted (requester_id, accepter_id, accept_date) values ('3', '4', '2016/06/09');

select requester_id as id , count(*) as num
from(
select requester_id from RequestAccepted 
union all
select accepter_id from RequestAccepted ) as new
group by id 
order by num desc
limit 1;

