with cte as (
    select ProductKey, sum(Quantity) as val
    from {{ ref("sales") }}
    group by ProductKey 
)

select p.Product, cte.val as total_sales
from cte 
left join {{ ref("Product") }} p  -- Ensure correct reference to the table
on cte.ProductKey = p.ProductKey
order by total_sales desc