SELECT  [EmployeeKey],
			[EmployeeID],
			[Salesperson],
			[Title],
			[UPN]
FROM {{ source ('dbo','SalesPerson')}}