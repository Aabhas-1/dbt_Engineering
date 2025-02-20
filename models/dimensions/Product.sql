SELECT [ProductKey],
			[Product],
			[Color],
			[Subcategory],
			[Category],
			[Background Color Format],
			[Font Color Format],
            [isActive],
            [UpdatedAt]
FROM {{ source ('dbo','Product')}}