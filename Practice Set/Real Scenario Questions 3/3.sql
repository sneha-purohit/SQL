-- Question 3: Tenure-Based Raise Eligibility
-- Business Scenario: The HR Department conducts annual raise reviews. Employees hired
-- before 2015 are eligible for consideration. Display each employee's raise eligibility status.
-- Question: Show each employee's name, hire date, salary, and their raise eligibility status.
-- Employees hired before January 1, 2015 are eligible.
select
    first_name,
    last_name,
    hire_date,
    case
        when hire_date between '2015-01-01'
        and Current_date then 'Eligible'
        else 'Ineligible'
    end
from
    employees;