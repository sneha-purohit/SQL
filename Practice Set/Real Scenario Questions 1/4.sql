-- DEPARTMENT: REGISTRAR'S OFFICE
-- SCENARIO 4: Computer Science Course Enrollment Report

-- REQUEST:

-- "I need to see which of our Computer Science majors are
-- Currently enrolled in courses. Show me their names along with the
-- Courses they're taking and their current grades. This will help me
-- Identify students who might need academic support." 

SELECT s.first_name,s.last_name, e.course_name, e.grade
from students s 
join enrollments e 
on s.student_id = e.student_id 
join majors m 
on s.major_id = m.major_id 
where m.major_name = "Computer Science"