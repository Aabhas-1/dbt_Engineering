select  ProductKey
from
{{ref("Product")}}
where ProductKey is null