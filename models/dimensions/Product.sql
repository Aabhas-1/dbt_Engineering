SELECT [ProductKey],
			[Product],
			[Color],
			[Subcategory],
			[Category],
			[Background Color Format],
			[Font Color Format],
            [UpdatedAt]
FROM {{ source ('dbo','Product')}}