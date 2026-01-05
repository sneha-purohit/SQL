-- SCENARIO SETUP:
-- You are a Junior Database Administrator at Springfield University. Your senior manager
-- is asking you to generate various reports for Different departments. Complete each task
-- using SQL JOIN queries

-- DEPARTMENT: ACADEMIC AFFAIRS
-- SCENARIO 1: Student Directory for Orientation
-- REQUEST:

-- "Hi! We're preparing welcome packets for our orientation week. I need a complete
-- student directory showing each student's full name, their email, and what major they're
-- studying. This will help our orientation coordinators group students by their programs."

SELECT CONCAT(s.first_name ," " , s.last_name)as full_name, s.email, m.major_name
FROM students s 
left join majors m  
on s.major_id = m.major_id 
group by s.first_name, s.last_name,s.email,m.major_name;

