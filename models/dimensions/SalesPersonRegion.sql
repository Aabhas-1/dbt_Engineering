SELECT [EmployeeKey],
			[SalesTerritoryKey]
FROM {{ source ('dbo','SalesPersonRegion')}}