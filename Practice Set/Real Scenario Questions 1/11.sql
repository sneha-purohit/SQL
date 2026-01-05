-- DEPARTMENT: STUDENT SUCCESS CENTER
-- SCENARIO 11: Students Taking Multiple Courses
-- REQUEST:

-- "We want to provide extra support to busy students. Find
-- students who are taking more than 2 courses. Show their names, majors,
-- and exactly how many courses they're juggling. These students might
-- benefit from our time management workshops."

SELECT first_name, last_name, major_name, count(course_name) as course_count
from students s
left join majors m 
on s.major_id = m.major_id 
left join enrollments e 
on s.student_id = e.student_id 
group by first_name 
having course_count > 2