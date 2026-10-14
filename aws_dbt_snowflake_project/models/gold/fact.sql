{%
    set configs = [
        {
            'table': 'airbnb.gold.obt',
            'columns': 'gold_obt.booking_id, gold_obt.listing_id, gold_obt.host_id, gold_obt.total_amount, gold_obt.cleaning_fee, gold_obt.service_fee, gold_obt.accommodates, gold_obt.bedrooms, gold_obt.bathrooms, gold_obt.response_rate',
            'alias': 'gold_obt'
        },
        {
            'table': 'airbnb.gold.dim_listings',
            'columns': '',
            'alias': 'dim_listings',
            'joining_condition': 'gold_obt.listing_id = dim_listings.listing_id'
        },
        {
            'table': 'airbnb.gold.dim_hosts',
            'columns': '',
            'alias': 'dim_hosts',
            'joining_condition': 'gold_obt.host_id = dim_hosts.host_id'
        }
    ]
%}

SELECT
    {{ configs[0]['columns'] }}

FROM {{ configs[0]['table'] }} AS {{ configs[0]['alias'] }}

{% for config in configs[1:] %}
LEFT JOIN {{ config['table'] }} AS {{ config['alias'] }}
    ON {{ config['joining_condition'] }}
{% endfor %}
