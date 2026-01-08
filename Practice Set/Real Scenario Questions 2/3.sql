-- Scenario 3: The "Above-Division" Performers (Aggregated Subquery) 
-- Request:
-- "I want to know who is earning more than the average salary of the 'Outdoors' division.
-- Calculate the average salary for all employees in Outdoors departments first, and then
-- list the individuals who beat that number."
select
    first_name,
    last_name,
    salary
from
    employees
where
    salary > (
        select
            avg(salary)
        from
            departments d
            join Employees e on d.department = e.department
        where
            d.division = "Outdoors"
    )