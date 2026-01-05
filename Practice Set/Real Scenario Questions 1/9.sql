-- SCENARIO 9: Total Credits Analysis by Student
-- REQUEST:

-- "We're monitoring student progress toward graduation. I need
-- a report showing each student who has enrolled in courses, their major,
-- and the total credits they've completed so far. Sort it by the students
-- with the most credits first - they're closest to graduating!"

select first_name, last_name, m.major_name, e.course_name , sum(e.credits) as total_credits, e.semester 
from students s 
left join majors m
on s.major_id = m.major_id 
left join enrollments e 
on s.student_id = e.student_id 
group by s.first_name
order by e.semester DESC ,  total_credits DESC