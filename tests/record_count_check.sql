
{% set expected_counts = {
    'sales': 100000,
    'Product': 10,
    'Region': 10,
    'Reseller': 10,
    'Salesperson': 10,
    'SalespersonRegion': 10,
    'Targets': 10
} %}

{% for table, expected_val in expected_counts.items() %}
    select 
        '{{ table }}' as table_name,
        (select count(*) from {{ source('dbo', table) }}) as record_count,
        {{ expected_val }} as expected_count
    where (select count(*) from {{ source('dbo', table) }}) < {{ expected_val }}
    
    {% if not loop.last %}
    union all
    {% endif %}
{% endfor %}
