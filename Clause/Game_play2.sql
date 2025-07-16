# Game Play Analysis 2

create table Activity(player_id int, device_id int, event_date date, games_played int);

insert into Activity values (1 ,2 ,'2016-03-01', 5);
insert into Activity values (1 ,2 ,'2016-05-02', 6);
insert into Activity values (2 ,3 ,'2017-06-25', 1);
insert into Activity values (3 ,1 ,'2016-03-02', 0);
insert into Activity values (3 ,4 ,'2018-07-03', 5);

select * from Activity;

select distinct player_id, device_id
from Activity 
where (player_id, event_date) in (
select player_id, min(event_date)
from Activity 
group by player_id);




