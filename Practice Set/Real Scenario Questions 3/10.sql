-- Question 10: Department-Specific Compensation Review
-- Business Scenario: HR conducts annual compensation reviews by department. Different
-- departments have different salary expectations. Create a tier system based on department and
-- salary within that department.
-- Question: For employees in high-revenue departments (Sports, Jewelry, Device Repair),
-- identify those earning below the department average as "Below Average - Consider Raise" and
-- those at or above as "Market Competitive". For all other departments, use a standard $100k
-- threshold.
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department,
    e.salary,
    CASE
        WHEN d.department IN ('Sports', 'Jewelry', 'Device Repair')
             AND e.salary < AVG(e.salary) OVER (PARTITION BY d.department)
            THEN 'Below Average - Consider Raise'

        WHEN d.department IN ('Sports', 'Jewelry', 'Device Repair')
             AND e.salary >= AVG(e.salary) OVER (PARTITION BY d.department)
            THEN 'Market Competitive'

        WHEN d.department NOT IN ('Sports', 'Jewelry', 'Device Repair')
             AND e.salary < 100000
            THEN 'Below Average - Consider Raise'

        ELSE 'Market Competitive'
    END AS salary_status
FROM employees e
JOIN departments d
ON e.department = d.department;