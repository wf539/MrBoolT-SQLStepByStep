--Lesson 19

USE [AdventureWorks2012]
GO

------------------------------------
DECLARE @PersonID AS INT = (
	SELECT MAX(BusinessEntityID)
	FROM [Sales].[SalesPerson]
	)

SELECT
	*
FROM [Sales].[SalesOrderHeader]
WHERE
	[SalesPersonID] = @PersonID;

----Subquery:
SELECT
	*
FROM [Sales].[SalesOrderHeader]
WHERE
	[SalesPersonID] = (
		SELECT MAX(BusinessEntityID)
		FROM [Sales].[SalesPerson]
)
	
--------------------------
SELECT
*
FROM [Sales].[Store]
WHERE [SalesPersonID] IN(279, 275)
	
---------------------------------
SELECT
*
FROM [Sales].[Currency]

SELECT
*
FROM [Sales].[CurrencyRate]

--
SELECT
*
FROM [Sales].[CurrencyRate]
WHERE [ToCurrencyCode] IN(
		SELECT
		TOP 2 PERCENT
			[CurrencyCode]
		FROM [Sales].[Currency]
		ORDER BY NEWID()
		)
	
---------------
SELECT
*
FROM [Sales].[SalesTaxRate]
WHERE
	[TaxRate] BETWEEN (
		SELECT 
			MIN([TaxRate]) + 5
		FROM [Sales].[SalesTaxRate]
	) AND (
		SELECT
			MAX([TaxRate]) - 7
		FROM [Sales].[SalesTaxRate]
	)

------------------------------------------
SELECT
	[BusinessEntityID]
	, [TerritoryID]
	, [SalesQuota]
	, [Bonus]
	, [CommissionPct]
	, [SalesYTD]
	, [SalesLastYear]
	, [rowguid]
	, [ModifiedDate]
FROM [Sales].[SalesPerson]

-----------CORRELATED
SELECT
	[CustomerID]
	, [SalesOrderID]
	, [OrderDate]
FROM [Sales].[SalesOrderHeader] S1
WHERE
	[SalesOrderID] = (
		SELECT
			MAX(S2.[SalesOrderID])
		FROM [Sales].[SalesOrderHeader] S2
		WHERE
			S1.[CustomerID] = S2.[CustomerID]
	)

-----------------Correlated with EXISTS
SELECT
	[Name]
	, [ProductNumber]
FROM [Production].[Product] P
WHERE [SafetyStockLevel] > 0
	AND EXISTS (
		SELECT
			*
		FROM [Production].[ProductReview] P2
		WHERE
			P2.[ProductID] = P.[ProductID]
			AND [Rating] = 2
	)
	
