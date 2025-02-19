{{ config(materialized='table') }}

SELECT [SalesOrderNumber],
			[OrderDate],
			[ProductKey],
			[ResellerKey],
			[EmployeeKey],
			[SalesTerritoryKey],
			[Quantity]
FROM {{ source ('dbo','sales')}}