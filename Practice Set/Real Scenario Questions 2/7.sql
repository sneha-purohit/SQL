-- Scenario 7: The Senior Employee (Scalar Subquery)
-- Request: 
-- "We want to give a long-service award. Find the employee (or employees)
-- who has the earliest hire_date in the entire 'Fashion' division."
select
    *
from
    employees e
where
    department in (
        SELECT
            DEPARTMENT
        FROM
            DEPARTMENTS
        WHERE
            DIVISION = "Fashion"
    )
order by
    hire_date