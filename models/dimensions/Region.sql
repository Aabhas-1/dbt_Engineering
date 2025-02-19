SELECT [SalesTerritoryKey],
			[Region],
			[Country],
			[Group]
FROM {{ source ('dbo','Region')}}