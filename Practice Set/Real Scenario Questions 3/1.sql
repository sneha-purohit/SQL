-- Question 1: Categorize Employees by Geographic Region
-- Business Scenario: The HR Manager needs to organize employees by region for regional
-- compliance training. Map each region_id to its geographic location.
-- Question: Write a query to display each employee's ID, name, and assign them to a geographic
-- region based on their region_id. Use the following mapping:
-- - Region IDs 1, 2, 3 → "North America"
-- - Region IDs 4, 5 → "Asia Pacific"
-- - Region IDs 6, 7 → "Canada"
select
    employee_id,
    first_name,
    last_name,
    region_id,
    case
        when region_id in (1, 2, 3) then 'North America'
        when region_id in (4, 5) then 'Asia Pacific'
        else 'Canada'
    end as Geographic_Regions
from
    employees