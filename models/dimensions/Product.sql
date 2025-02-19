SELECT [ProductKey],
			[Product],
			[Color],
			[Subcategory],
			[Category],
			[Background Color Format],
			[Font Color Format]
FROM {{ source ('dbo','Product')}}