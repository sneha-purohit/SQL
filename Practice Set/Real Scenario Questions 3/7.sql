-- Question 7: Email Verification Status
-- Business Scenario: The IT Department is conducting a data quality audit. Some employees
-- have missing email addresses that need to be flagged for verification.
-- Question: Show each employee's name, email, and a verification status. Flag employees with
-- missing email addresses.( ‘Missing-Needs Update’ and ‘Valid Email Format’)
select
    employee_id,
    first_name,
    last_name,
    email,
    case
        when email != 'Null' then 'Valid Email Format'
        else 'Missing-Needs Update'
    end as Verification_Status
from
    employees;