-- Question 8: Bonus Eligibility by Tenure Ranges
-- Business Scenario: The Payroll Team administers quarterly bonuses based on tenure.
-- Different tenure ranges receive different bonus percentages.
-- Question: Calculate bonus eligibility for each employee based on tenure:
-- - Less than 5 years → No bonus
-- - 5-9 years → 3% of salary
-- - 10-14 years → 5% of salary
-- - 15+ years → 8% of salary
-- Show employee name, hire date, salary, and bonus amount.
select
    first_name,
    last_name,
    hire_date,
    salary,
    timestampdiff(year, hire_date, CURDATE()) as Year_count,
    case
        when timestampdiff(year, hire_date, CURDATE()) < 5 then 0
        when timestampdiff(year, hire_date, CURDATE()) between 5
        and 9 then salary * 0.03
        when timestampdiff(year, hire_date, CURDATE()) between 10
        and 14 then salary * 0.05
        else salary * 0.08
    end as bonus_amount
from
    employees