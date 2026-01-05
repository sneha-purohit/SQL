-- SCENARIO 5: Fall 2023 Enrollment Analysis
-- REQUEST:

-- "The university board wants enrollment statistics from Fall 2023.
-- Please provide a detailed report showing every student who took courses
-- in Fall 2023, including their major information and what courses they
-- took. This data will be used in our annual report."

SELECT *
from students s 
join enrollments e 
on s.student_id = e.student_id 
where e.semester = "Fall 2023"