-- Scenario 8: Beating the Canadian Average (Scalar Subquery)
-- Request: 
-- "How many of our employees (globally) are earning a salary higher than the
-- average salary of our Canadian workforce?"
select
    *
from
    employees e
where
    salary >(
        select
            avg(salary)
        from
            employees e
        where
            region_id in(
                SELECT
                    REGION_ID
                FROM
                    REGIONS
                WHERE
                    country = "Canada"
            )
    )