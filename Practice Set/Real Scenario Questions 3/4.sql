-- Question 4: Department Performance Tiers
-- Business Scenario: Management wants to classify departments into performance tiers for
-- resource allocation. Different departments need different attention levels.
-- Question: Classify departments into performance tiers and show employee count per tier:
-- - "Sports", "Jewelry", "Device Repair" → "High Priority"
-- - "Computers", "Tools", "Phones & Tablets" → "Standard Priority"
-- - All other departments → "Standard Priority"
select
    Performance_Tiers,
    count(*) as Emp_Count
from
    (
        select
            case
                when department in ('Sports', 'Jewelry', 'Device Repair') then 'High Priority'
                when department in ('Computers', 'Tools', 'Phones & Tablets') then 'Standard Priority'
                else 'Low Priority'
            end as Performance_Tiers
        from
            employees
    ) a
group by
    Performance_Tiers;