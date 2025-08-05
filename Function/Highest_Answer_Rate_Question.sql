# Highest_Answer_Rate_Question

create table if not exists 	SurveyLog(id int, action varchar(10), question_id int, answer_id int, q_num int, timestamp int);
truncate table SurveyLog;

insert into SurveyLog(id , action, question_id , answer_id , q_num , timestamp) values('5' ,'show', '285', null, '1', '123');
insert into SurveyLog(id , action, question_id , answer_id , q_num , timestamp) values('5' ,'answer', '285', '124124', '1', '124');
insert into SurveyLog(id , action, question_id , answer_id , q_num , timestamp) values('5' ,'show', '369', null, '2', '125');
insert into SurveyLog(id , action, question_id , answer_id , q_num , timestamp) values('5' ,'skip', '369', null, '2', '126');

select question_id as survey_log
from SurveyLog 
group by question_id 
order by
sum(case when action ='answer' then 1 else 0 end)/ sum(case when action ='show' then 1 else 0 end) desc, question_id limit 1;