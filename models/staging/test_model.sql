select
  *
from {{ source('keboola','dssand') }}
limit 100