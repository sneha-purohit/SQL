-- Scenario 9: Departments with High Earners (Subquery with EXISTS)
-- Request: 
-- "I'm not interested in specific names right now. Just give me a list of
-- Department names that have at least one employee earning over $140,000."
SELECT
    d.department
FROM
    departments d
WHERE
    EXISTS (
        SELECT
            1
        FROM
            employees e
        WHERE
            e.department = d.department
            AND e.salary > 140000
    )