{{ config(materialized='table') }}

SELECT [SalesOrderNumber],
			[OrderDate],
			[ProductKey],
			[ResellerKey],
			[EmployeeKey],
			[SalesTerritoryKey],
			[Quantity]
FROM [dbt].[dbo].[Sales]