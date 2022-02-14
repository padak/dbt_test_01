select
  "kbc_data_science_sandbox_id",
  "date"::timestamp as date,
  "type",
  "sandbox_active",
  "sandbox_runtime_hours"::float as "sandbox_runtime_hours",
  "time_credits_used"::float as "time_credits_used"
from {{ source('keboola','dssand') }}
