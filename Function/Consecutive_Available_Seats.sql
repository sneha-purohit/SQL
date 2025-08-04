# Consecutive Available Seats

create table if not exists cinema(seat_id int, free int);
truncate table cinema;
insert into cinema(seat_id,free) values('1' , '1');
insert into cinema(seat_id,free) values('2' , '0');
insert into cinema(seat_id,free) values('3' , '1');
insert into cinema(seat_id,free) values('4' , '1');
insert into cinema(seat_id,free) values('5' , '1');

with cte as (
select * , lead(free) over (order by seat_id) as next_seat,
lag(free) over(order by seat_id) as previous_seat
from cinema
)
select seat_id
from cte 
where free= '1' and (next_seat = '1' or previous_seat = '1')
order by seat_id; 