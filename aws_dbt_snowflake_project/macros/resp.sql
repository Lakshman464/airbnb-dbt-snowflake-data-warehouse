{% macro res(col)%}
case when {{col}} > 95 then 'VERY GOOD'
     WHEN {{col}} > 80 THEN 'GOOD'
     WHEN {{col}} > 60 THEN 'FAIR'
     ELSE 'POOR'
end
{% endmacro %}
