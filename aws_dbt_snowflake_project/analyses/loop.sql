{% set cols = ['BOOKING_ID', 'BOOKING_DATE', 'NIGHTS_BOOKED'] %}

select 
{%for c in cols%}
    {{c}} 
{%if not loop.last%},{%endif%}
{%endfor%}
from {{ref('bronze_bookings')}}
