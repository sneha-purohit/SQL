
Use big;
create table Student ( Name text not null, group_id int not null);

insert into Student values('A,B' , 1);
insert into Student values('C,D' , 2);

with que as(
select substring_index(Name, ',' , 1) as name , substring_index(Name, ',' , -1) as new1 , group_id
from Student)
select name, group_id
from que 
union 
select new1, group_id 
from que
order by group_id;





