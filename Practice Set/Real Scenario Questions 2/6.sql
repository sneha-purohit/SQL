-- Scenario 6: Division Salary Leaders (Correlated Subquery)
-- Request: 
-- "This is a complex one. I want to find employees who earn more than the
-- average salary of their specific Division. You'll need to figure out the division for every
-- employee and compare them against their own division's average."
select
    first_name,
    last_name,
    salary,
    department
from
    employees e
where
    e.salary >(
        select
            avg(salary)
        from
            employees e1
        group by
            department
    )