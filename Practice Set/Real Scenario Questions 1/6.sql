-- SCENARIO 6: High Achievers Recognition List
-- REQUEST:

-- "We're hosting an honors ceremony next month and want to
-- recognize students who earned 'A' grades. Create a list showing these
-- high achievers with their names, majors, courses where they got A's,
-- and which semester. We'll use this for certificates and the ceremony program."

SELECT s.first_name, s.last_name, m.major_name, e.course_name, e.grade , e.semester 
from students s 
join majors m
on s.major_id = m.major_id 
JOIN enrollments e 
on s.student_id = e.student_id 
where e.grade = "A"