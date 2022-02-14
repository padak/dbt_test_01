select 
    year,
    "type",
    round(sum(total_runtime),0) as total_runtime,
    round(sum(total_credits),0) as total_credits
from {{ ref('usage_monthly') }}
group by 1,2
