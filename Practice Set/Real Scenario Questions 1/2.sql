-- SCENARIO 2: Engineering Department Focus Group
-- REQUEST:

-- "Our department is organizing a town hall meeting for all
-- Engineering students. Can you pull a list of students enrolled in any
-- Engineering department major? Include their names and specific major
-- so we can personalize the invitations."


SELECT s.first_name, s.last_name, s.email, m.major_name, m.department 
FROM students s 
left join majors m  
on s.major_id = m.major_id 
where m.department = "Engineering"