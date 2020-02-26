--Lesson 6

USE AdventureWorks2017
GO

SELECT 
* 
FROM Sales.SalesReason

--
SELECT 
* 
FROM Sales.SalesReason
WHERE ReasonType = 'Marketing'

--
SELECT
	Name
	, ReasonType
	, ModifiedDate
FROM Sales.SalesReason
WHERE ReasonType = 'Marketing'
ORDER BY Name ASC

--
SELECT
	Name
	, ReasonType
	, ModifiedDate
FROM Sales.SalesReason
WHERE ReasonType = 'Marketing'
ORDER BY Name DESC

--
SELECT
	Name
	, ReasonType
	, YEAR(ModifiedDate) AS 'ModifiedDateYear'
	, MONTH(ModifiedDate) AS 'ModifiedDateMonth'
FROM Sales.SalesReason
WHERE ReasonType = 'Marketing'
ORDER BY Name DESC