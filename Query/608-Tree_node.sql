# https://leetcode.com/problems/tree-node

Create table If Not Exists Tree (id int, p_id int);
Truncate table Tree;
insert into Tree (id, p_id) values ('1', NULL);
insert into Tree (id, p_id) values ('2', '1');
insert into Tree (id, p_id) values ('3', '1');
insert into Tree (id, p_id) values ('4', '2');
insert into Tree (id, p_id) values ('5', '2');


select id,
    case 
       when id = (select t1.id from Tree t1 where t1.p_id is null) then 'Root'
       when id in (select distinct t2.p_id from Tree t2 where t2.p_id is      not null) then 'Inner'
        else 'Leaf'
        end as type
        from Tree;

