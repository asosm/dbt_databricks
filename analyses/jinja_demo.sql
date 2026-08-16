{%- set columns = adapter.get_columns_in_relation(ref('bronze_orders')) -%}
{%- for col in columns %}
  {{ col.name }}
{%- endfor %}
