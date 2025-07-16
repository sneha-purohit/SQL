

create table Match_2 (team_A varchar(20) , team_B varchar(20) , result text);



INSERT INTO Match_2 (team_A,team_B,result) VALUES ('India','Bangladesh','India');
INSERT INTO Match_2 (team_A,team_B,result) VALUES ('India','Pakistan','India');
INSERT INTO Match_2 (team_A,team_B,result) VALUES ('India','Srilanka',null);
INSERT INTO Match_2 (team_A,team_B,result) VALUES ('Srilanka','Bangladesh','Srilanka');
INSERT INTO Match_2 (team_A,team_B,result) VALUES ('Srilanka','Pakistan','Pakistan');
INSERT INTO Match_2 (team_A,team_B,result) VALUES ('Bangladesh','Pakistan','Bangladesh');


with matches as (
select team_A as team, result
from Match_2 
union all
select team_B, result
from Match_2)
select team, count(team) as matches_played,
sum(case when result = team then 1 else 0 end) wins,
sum(case when result is null then 1 else 0 end) ties,
sum(case when result != team then 1 else 0 end) loss
from matches
group by team;



