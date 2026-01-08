-- Scenario 1: The "Electronics" Division Roster (Subquery with IN)
-- Request:
-- "The VP of the Electronics division wants to send a broadcast email to her entire team.
-- However, our employee table only lists 'Department', not 'Division'. Can you give me a
-- list of all employees who work in any department that falls under the 'Electronics'
-- division?"
select
    *
from
    employees e
where
    department in (
        SELECT
            department
        from
            departments
        where
            division = "Electronics"
    )