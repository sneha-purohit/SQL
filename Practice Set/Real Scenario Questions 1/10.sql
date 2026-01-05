-- SCENARIO 10: Course Popularity Report
-- REQUEST:

-- "We're deciding which courses to offer more sections of next
-- semester. Please tell me which courses have the most students enrolled.
-- Show the course name and number of students taking it. Sort from most
-- to least popular so we can prioritize."

SELECT course_name, count(distinct s.student_id) as No_of_students_enrolled
from enrollments e 
join students s 
on e.student_id = s.student_id 
group by e.course_name 
order by No_of_students_enrolled DESC 