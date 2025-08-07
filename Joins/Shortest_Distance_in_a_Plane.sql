# Shortest Distance in a Plane

create table if not exists Point2D (x int , y int);

insert into Point2D (x,y) values('-1', '-1');
insert into Point2D (x,y) values('0', '0');
insert into Point2D (x,y) values('-1', '-2');

select min(shortest) as shortest from
( select
round(sqrt(((p1.x-p2.x)*(p1.x-p2.x)) + ((p1.y-p2.y)*(p1.y-p2.y))),2) shortest
from  Point2D p1 cross join Point2D p2
where (p1.x<>p2.x or p1.y<>p2.y))vals