select 
    year("date") as year,
    week("date") as week,
    "type",
    "sandbox_active",
    sum("sandbox_runtime_hours") as total_runtime,
    sum("time_credits_used") as total_credits
from {{ ref('sandboxes') }}
group by 1,2,3,4
order by 1,2,3