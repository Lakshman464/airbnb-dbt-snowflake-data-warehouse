{{
config(
    materialized='ephemeral'
)
}}

select
    host_id,
    host_name,
    host_since,
    is_superhost,
    response_rate_quality,
    hosts_created_at
from {{ref('obt')}}
