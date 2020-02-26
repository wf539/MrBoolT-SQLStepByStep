--Lesson 5

SELECT	*
FROM	HumanResources.Department
WHERE	DepartmentID = 1

SELECT		TOP 5	*
FROM		[HumanResources].[Department]

SELECT	*
FROM	HumanResources.Department
WHERE	DepartmentID > 2
AND		DepartmentID < 10

SELECT	*
FROM	HumanResources.Department
WHERE	DepartmentID BETWEEN 2 AND  10

SELECT	*
FROM	HumanResources.Department
WHERE	Name = 'SAleS'

SELECT	*
FROM	HumanResources.Department
WHERE	GroupName = 'Manufacturing'

SELECT	*
FROM	HumanResources.Department
WHERE	GroupName LIKE 'Manufac%'

SELECT	*
FROM	HumanResources.Department
WHERE	GroupName LIKE 'Manufacturin_'

SELECT	*
FROM	HumanResources.Department
WHERE	GroupName LIKE '%General%'

SELECT		HireDate, *
FROM		[HumanResources].[Employee]
WHERE		HireDate > '2013-04-01'