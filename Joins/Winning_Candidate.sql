# Winning Candidate

create table if not exists Candidate(id int, name varchar(20));
create table if not exists Vote(id int, candidateId int);
truncate table Candidate;
insert into Candidate(id, name) values('1' , 'A');
insert into Candidate(id, name) values('2' , 'B');
insert into Candidate(id, name) values('3' , 'C');
insert into Candidate(id, name) values('4' , 'D');
insert into Candidate(id, name) values('5' , 'E');

truncate table Vote;
insert into Vote(id, candidateId) values('1' , '2');
insert into Vote(id, candidateId) values('2' , '4');
insert into Vote(id, candidateId) values('3' , '3');
insert into Vote(id, candidateId) values('4' , '2');
insert into Vote(id, candidateId) values('5' , '5');

select name from(
select candidateId
from Vote
group by candidateId
order by count(*) desc limit 1) win
join candidate c on c.id = win.candidateId;


