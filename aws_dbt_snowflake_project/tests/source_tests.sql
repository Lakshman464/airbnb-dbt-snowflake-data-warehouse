{{
    config(
        severity='warn',
    )
}}

select
1
from {{source('stagging','bookings')}}
where booking_amount < 0
