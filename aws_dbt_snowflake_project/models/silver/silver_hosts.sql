{{config(
    materialized = 'incremental',
    unique_key = 'host_id'
)}}

select
host_id,
replace(host_name, ' ', '_') as host_name,
host_since,
is_superhost,
response_rate,
{{res('cast(response_rate as int)')}} as response_rate_quality,
created_at
from {{ref('bronze_hosts')}}
