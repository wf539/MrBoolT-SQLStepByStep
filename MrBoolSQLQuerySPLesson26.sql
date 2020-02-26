--Lesson 26

USE [AdventureWorks2012]
GO

-------------------------
SELECT
	TOP 10 *
FROM [HumanResources].[Employee]
ORDER BY 
	1 DESC

--------------------------------

EXECUTE [HumanResources].[uspUpdateEmployeePersonalInfo]
	290, 
    '134219713', 
    '1969-12-25', 
    'S', 
    'M'

-------------------------
SELECT
	TOP 10 *
FROM [HumanResources].[Employee]
ORDER BY 
	1 DESC

-------------------------
SELECT
	TOP 10 *
FROM [HumanResources].[EmployeePayHistory]
WHERE 
	[BusinessEntityID] = 290

-------------------------------
DECLARE @MyRate money = 16.50

EXECUTE [HumanResources].[uspUpdateEmployeeHireInfo]
    290, 
    'European Sales Manager', 
    '2006-09-10', 
    '2013-06-15', 
    @MyRate, 
    1, 
    1

-------------------------
SELECT
	TOP 10 *
FROM [HumanResources].[EmployeePayHistory]
WHERE 
	[BusinessEntityID] = 290
	