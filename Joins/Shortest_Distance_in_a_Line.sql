# Shortest Distance in a Line

create table if not exists Point (x int);

insert into Point (x) values('-1');
insert into Point (x) values('0');
insert into Point (x) values('2');

select min(distance) shortest from
(select abs(p1.x-p2.x)distance
from Point p1
cross join Point p2
where p1.x<>p2.x) dist_val