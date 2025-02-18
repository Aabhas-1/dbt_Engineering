WITH
cte1 AS (
    SELECT
        sales.SalesOrderNumber,
        sales.ProductKey,
        sales.EmployeeKey,
        sp.Salesperson
    FROM {{ ref("sales") }} sales
    LEFT JOIN {{ ref("SalesPerson") }} sp
        ON sales.EmployeeKey = sp.EmployeeKey
),

cte2 AS (
    SELECT
        Salesperson,
        COUNT(DISTINCT SalesOrderNumber) AS order_count, -- Count unique orders
        COUNT(ProductKey) AS product_count -- Count total products sold
    FROM cte1
    GROUP BY Salesperson
),

cte3 as (
SELECT 
    Salesperson,
    order_count,
    product_count,
    dense_rank() over (partition by order_count,product_count order by order_count desc,product_count desc) as rnk 
FROM cte2)

Select Salesperson,order_count,product_count
from cte3
where rnk <= 10

