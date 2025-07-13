# https://leetcode.com/problems/biggest-single-number

create database single;
use single;

Create table If Not Exists MyNumbers (num int);
Truncate table MyNumbers;
insert into MyNumbers (num) values ('8');
insert into MyNumbers (num) values ('8');
insert into MyNumbers (num) values ('3');
insert into MyNumbers (num) values ('3');
insert into MyNumbers (num) values ('1');
insert into MyNumbers (num) values ('4');
insert into MyNumbers (num) values ('5');
insert into MyNumbers (num) values ('6');

SELECT max(num) as num
FROM (SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(*) = 1) as num ;