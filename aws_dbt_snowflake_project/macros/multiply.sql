{% macro multiply(x,y,integer)%}
round({{x}} * {{y}}, {{integer}})
{% endmacro %}
