-- Scenario 10: The "Second Tier" Regions (Comparison against MAX)
-- Request: 
-- "We know which region pays the absolute most. I want to see a list of
-- employees who live in regions where the regional average salary is less than
-- the company-wide maximum salary (essentially excluding the top-paid anomaly
-- region)."
with regional_salary as(
    select
        region_id,
        avg(salary) as avg_sal
    from
        employees e
    group by
        region_id
)
select
    e.*
from
    employees as e
    left join regional_salary as a on e.region_id = a.region_id
where
    avg_sal < (
        select
            max(salary)
        from
            employees
    )