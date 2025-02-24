{% macro count_rows(schema_name, table_name) %}
    select count(*) from {{ source(schema_name, table_name) }}
{% endmacro %}
