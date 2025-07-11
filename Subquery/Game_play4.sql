# https://leetcode.com/problems/game-play-analysis-iv/description/

create database activity;
use activity;

Create table If Not Exists Activity (player_id int, device_id int, event_date date, games_played int);
Truncate table Activity;
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-03-01', '5');
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-03-02', '6');
insert into Activity (player_id, device_id, event_date, games_played) values ('2', '3', '2017-06-25', '1');
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '1', '2016-03-02', '0');
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '4', '2018-07-03', '5');

select round(count(distinct player_id)/ (select count(distinct player_id)
from Activity), 2) as fraction
from Activity
where(player_id, date_sub(event_date, interval 1 day)) in 
(select player_id, min(event_date) as first_login 
from Activity
group by player_id
)