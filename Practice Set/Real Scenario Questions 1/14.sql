-- SCENARIO 14: Credits Toward Graduation Tracker
-- REQUEST:

-- "Graduation is coming up! I need to see where each student
-- stands. Show me students with their majors, how many credits they've
-- completed, how many they need to graduate, and how many credits they
-- still need. This helps us do graduation audits."

SELECT s.first_name , s.last_name ,m.major_name , sum(e.credits), (m.credits_required - sum( e.credits)) as credits_needed
from majors m 
join students s 
on m.major_id = s.major_id 
join enrollments e 
on s.student_id = e.student_id 
group by s.first_name