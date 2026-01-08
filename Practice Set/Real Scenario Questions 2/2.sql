-- Scenario 2: US-Based Payroll (Subquery with Multi-Table Logic)
-- Request:
-- "Legal needs a list of all employees based in the United States for tax purposes. We have
-- the Region IDs in the employee table, but you'll need to look up which IDs correspond to
-- 'United States' in the regions table first."
select
    *
from
    employees e
where
    e.region_id in (
        SELECT
            region_id
        from
            regions r
        where
            country = "United States"
    )