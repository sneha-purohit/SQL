-- SCENARIO 12: Course Load by Major Program
-- REQUEST:

-- "I'm analyzing which majors have the heaviest course loads.
-- For each major, show me the average number of credits students in that
-- program have completed. This helps us balance curriculum requirements
-- across departments."

SELECT major_name, avg(e.credits)
from majors m 
join students s 
on m.major_id = s.major_id 
join enrollments e 
on s.student_id = e.student_id 
group by m.major_name  
