-- DEPARTMENT: ENROLLMENT MANAGEMENT

-- SCENARIO 13: Department-Wide Performance Overview
-- REQUEST:

-- "The President needs a high-level overview of our departments.
-- For each department, I need to know: total number of students enrolled,
-- and total number of course enrollments. This shows both program size
-- and student engagement."

SELECT department, count(e.enrollment_id), count(course_name)
from majors m 
join students s 
on m.major_id = s.major_id 
join enrollments e 
on s.student_id = e.student_id 
group by department 