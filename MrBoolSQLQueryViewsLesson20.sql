--Lesson 20

USE AdventureWorks2017
GO

--
SELECT
	[FirstName]
	, [LastName]
	, [JobTitle]
FROM [HumanResources].[vEmployee]

-----------
SELECT
	[Name]
	, [ContactType]
	, [EmailAddress]
FROM [Sales].[vStoreWithContacts]


--
IF OBJECT_ID('[Production].[vBlackProducts]') IS NOT NULL
DROP VIEW [Production].[vBlackProducts]
GO

CREATE VIEW [Production].[vBlackProducts]
AS
SELECT
	PP.[Name]
	, PP.[ProductNumber]
	, PP.[ListPrice]
	, PPC.[Name] AS 'SubCatName'

FROM [Production].[Product] PP
INNER JOIN [Production].[ProductCategory] PPC
ON PPC.[ProductCategoryID] = PP.[ProductSubcategoryID]
WHERE 
	[Color] = 'Black';
GO

--
SELECT DISTINCT
	[ListPrice]
FROM [Production].[vBlackProducts]
WHERE
	[SubCatName] = 'Components'

--
SELECT
	*
FROM [Production].[vBlackProducts]
ORDER BY
	[SubCatName] DESC