-- SCENARIO 3: Undeclared Major Outreach
-- REQUEST:

-- "We noticed some students haven't declared their majors yet.
-- Our advisors want to reach out to them personally. Could you generate
-- a list showing ALL students, and clearly mark which ones don't have
-- a major assigned? We need their names and email addresses."

SELECT CONCAT(s.first_name ," " , s.last_name) as full_name, s.email
FROM students s 
left join majors m  
on s.major_id = m.major_id 
where major_name is NUll