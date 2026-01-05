-- SCENARIO 7: Major Enrollment Statistics
-- REQUEST:

-- "I'm preparing data for our accreditation review. I need

-- to know how many students are enrolled in each major program, including
-- programs with zero students. List the majors alphabetically with their
-- student counts. This shows our program diversity."

SELECT m.major_name, count(s.first_name)
from students s 
left join majors m
on s.major_id = m.major_id 
group by m.major_name 