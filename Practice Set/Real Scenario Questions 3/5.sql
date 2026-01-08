-- Question 5: Gender-Based Salary Range Assignment
-- Business Scenario: The company wants to ensure fair pay distribution across genders.
-- Analyze salary ranges for each gender group to identify pay gaps.
-- Question: For each employee, display their gender, salary, and a salary range category based
-- on their gender:
-- - Female employees: Under $60k, $60k-$100k, $100k+
-- - Male employees: Under $80k, $80k-$120k, $120k+
select
    employee_id,
    gender,
    salary,
    case
        when gender = 'F'
        and salary < 60000 then 'Under 60k'
        when gender = 'F'
        and salary between 60000
        and 100000 then '60k-100k'
        when gender = 'F'
        and salary > 100000 then '100k+'
        when gender = 'M'
        and salary < 80000 then 'Under 80k'
        when gender = 'M'
        and salary between 80000
        and 120000 then '80k-120k'
        when gender = 'M'
        and salary > 120000 then '120k+'
    end as salary_range
from
    employees;