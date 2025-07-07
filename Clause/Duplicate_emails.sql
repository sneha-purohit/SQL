# https://leetcode.com/problems/duplicate-emails/description/

create database Email;
use Email;
Create table If Not Exists Person (id int, email varchar(255));
Truncate table Person;
insert into Person (id, email) values ('1', 'a@b.com');
insert into Person (id, email) values ('2', 'c@d.com');
insert into Person (id, email) values ('3', 'a@b.com');

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;