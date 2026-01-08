-- Question 9: High-Value Employee Identification
-- Business Scenario: The Executive Team wants to identify high-value employees who earn top
-- salaries and have been with the company for significant tenure.
-- Question: Identify and categorize employees as "High Value" if they earn $120,000+ AND were
-- hired before 2010, or as "Standard" otherwise. Show their strategic importance level.
select
    first_name,
    last_name,
    salary,
    hire_date,
    case
        when (
            salary > 120000
            and hire_date < '2010-01-01'
        ) then 'High Value'
        else 'Standard Value'
    end as Strategic_Importance_Level
from
    employees