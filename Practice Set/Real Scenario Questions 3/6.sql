-- Question 6: Seniority Level Classification Based on Hire Date
-- Business Scenario: Management needs to understand workforce composition by seniority for
-- succession planning and mentoring programs.
-- Question: Classify employees into seniority levels based on when they were hired:
-- - Hired before 2005 → "Veteran (18+ years)"
-- - Hired 2005-2009 → "Senior (16-20 years)"
-- 
-- - Hired 2010-2013 → "Established (12-15 years)"
-- - Hired 2014 onwards → "Junior (11 years or less)"
select
    first_name,
    last_name,
    hire_date,
    case
        when hire_date < '2005-01-01' then 'Veteran'
        when hire_date between '2005-01-01'
        and '2009-12-31' then 'Senior'
        when hire_date between '2010-01-01'
        and '2013-12-31' then 'Established'
        else 'Junior'
    end as Seniority_level
from
    employees;