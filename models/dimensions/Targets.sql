SELECT  [EmployeeID],
			[TargetMonth]
FROM {{ source ('dbo','Targets')}}