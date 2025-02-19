SELECT [ResellerKey],
			[Business Type],
			[Reseller],
			[City],
			[State-Province],
			[Country-Region]
FROM {{ source ('dbo','Reseller')}}