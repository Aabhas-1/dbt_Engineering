-- dbt deduplicate macro not working

with row_numbered as (
    select
        *,
        row_number() over (
            partition by ProductKey
            order by UpdatedAt desc  -- Keeps the latest record
        ) as rn
    from {{ ref('Product') }}
)

select *
from row_numbered
where rn = 1;
