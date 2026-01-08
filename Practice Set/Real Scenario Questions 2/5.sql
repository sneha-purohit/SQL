-- Scenario 5: The "Asia" Top Earner (Subquery with MAX)
-- Request:
-- "We need to identify the highest-paid employee specifically located in our
-- Asia branches (Region IDs 4 and 5). Don't just give me the amount; I need the name and
-- title of that specific person."
select
    first_name,
    last_name,
    salary
from
    employees s
where
    s.region_id in (
        SELECT
            region_id
        from
            regions r
        where
            country = "Asia"
    )
order by
    salary DESC
LIMIT
    1;