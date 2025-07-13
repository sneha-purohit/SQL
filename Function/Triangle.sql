# https://leetcode.com/problems/triangle-judgement

create database tri;
use tri;
Create table If Not Exists Triangle (x int, y int, z int);
Truncate table Triangle;
insert into Triangle (x, y, z) values ('13', '15', '30');
insert into Triangle (x, y, z) values ('10', '20', '15');


SELECT x,y,z,
IF (x+y > z and y+z > x and z+x > y, "Yes" , "No") as triangle
FROM Triangle