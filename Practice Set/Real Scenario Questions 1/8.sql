-- SCENARIO 8: Science Department Workload Analysis
-- REQUEST:

-- "Our department (Science) is reviewing course loads. Can you
-- show me all our Science majors along with every course they're enrolled
-- in? Include their grades and credit hours. I need to see if students
-- are overloaded or need more challenging coursework."

SELECT m.major_name, e.course_name, e.grade, e.credits
from students s 
join majors m
on s.major_id = m.major_id 
join enrollments e 
on s.student_id = e.student_id 
where department = "Science"
group by m.major_name, e.course_name, e.grade, e.credits