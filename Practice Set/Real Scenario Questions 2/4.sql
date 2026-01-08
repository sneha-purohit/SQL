-- Scenario 4: Empty Departments (Subquery with NOT IN)
-- Request:
-- "We have a list of standard departments in our system, but I suspect some of them are
-- currently empty (no active employees). Can you list the Department Names from the
-- departments table that do not exist in the employees table?"
SELECT
    DEPARTMENT
FROM
    DEPARTMENTS
WHERE
    DEPARTMENT NOT IN (
        SELECT
            DISTINCT DEPARTMENT
        FROM
            EMPLOYEES
    )