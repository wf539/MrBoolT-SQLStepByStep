------------Lesson 33
USE [AdventureWorks2012];
GO

--------------------------------
PRINT 'Here is the first batch'
SELECT TOP 1
	[Name]
FROM [HumanResources].[Department];
GO


PRINT 'Here is the second batch'
SELECT TOP 2
	*
FROM [HumanResources].[Employee];
GO


PRINT 'Here is the third batch'
SELECT
	[AddressLine1]
	, [City]
	, [PostalCode]
FROM [Person].[Address]
WHERE
	[AddressID] = 10;
GO

---------------------------------------------------
PRINT 'Here is the first batch'
SELECT TOP 1
	[Name]
FROM [HumanResources].[Department];
GO


PRINT 'Here is the second batch'
SELECT TOP 2
	*
FROM [HumanResource].[Employee];
GO


PRINT 'Here is the third batch'
SELECT
	[AddressLine1]
	, [City]
	, [PostalCode]
FROM [Person].[Address]
WHERE
	[AddressID] = 10;
GO

---------------------------------------------------
DECLARE @x varchar(32) = 'Testing...'
PRINT	@x
GO
PRINT	@x  ---out of batch scope

-----------------------------------------------
IF OBJECT_ID('dbo.EmployeeView', 'V') IS NOT NULL
DROP VIEW dboEmployeeView
GO	--Errors if commented out
CREATE VIEW dbo.EmployeeView
AS
SELECT TOP 5
	*
FROM [HumanResources].[Employee]
ORDER BY
	[HireDate] DESC
GO

-----------------------------------------------------
IF OBJECT_ID('dbo.MyTable', 'U') IS NOT NULL
DROP TABLE dbo.MyTable;

CREATE TABLE dbo.MyTable
(
	Id int
);
GO

ALTER TABLE dbo.MyTable
ADD Name varchar(32);
GO --Errors if commented out

SELECT
	Id
	, Name
FROM dbo.MyTable