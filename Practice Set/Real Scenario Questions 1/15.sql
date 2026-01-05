-- SCENARIO 15: Academic Standing Report - Spring 2024
-- REQUEST:

-- "We need to review Spring 2024 performance. Show me all students
-- who took courses in Spring 2024 with their majors, what courses they took,
-- and their grades. Also include the semester field to confirm the term.
-- We'll use this to identify students for academic probation or dean's list."

SELECT s.first_name, s.last_name ,m.major_name ,e.course_name ,e.grade ,e.semester, m.department 
from majors m 
join students s 
on m.major_id = s.major_id 
join enrollments e 
on s.student_id = e.student_id 
where e.semester = "Spring 2024"