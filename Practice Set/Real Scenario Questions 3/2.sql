-- Question 2: Create Salary Band Classification
-- Business Scenario: The Finance Team wants to categorize employees into salary bands for
-- compensation planning and budget forecasting.
-- Question: Categorize all employees into salary bands and show the count of employees in
-- each band along with average salary:
-- - Below $50,000 → "Entry Level"
-- - $50,000 - $79,999 → "Mid Level"
-- - $80,000 - $119,999 → "Senior Level"
-- - $120,000+ → "Executive Level"
select
    employee_id,
    first_name,
    last_name,
    sum(salary) / count(first_name) as 'average_salary',
    case
        when sum(salary) / count(first_name) < 50000 then 'Entry Level'
        when sum(salary) / count(first_name) between 50000
        and 79999 then 'Mid Level'
        when sum(salary) / count(first_name) between 80000
        and 119999 then 'Senior Level'
        else 'Executive level'
    end as Job_levels
from
    employees
group by
    employee_id,
    first_name,
    last_name;