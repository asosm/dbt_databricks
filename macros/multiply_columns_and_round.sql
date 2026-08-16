{% macro multiply_columns_and_round(column_1, column_2, decimal_places=2) -%}
    round({{ column_1 }} * {{ column_2 }}, {{ decimal_places }})
{%- endmacro %}
