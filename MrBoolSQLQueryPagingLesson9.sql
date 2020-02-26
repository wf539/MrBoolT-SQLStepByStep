--Lesson 9

USE AdventureWorks2017
GO

SELECT
	FirstName
	, LastName
	, Demographics
FROM Person.Person
ORDER BY
	LastName
	, FirstName
OFFSET 0 Rows
FETCH NEXT 5 Rows ONLY

SELECT
	FirstName
	, LastName
	, Demographics
FROM Person.Person
ORDER BY 
	LastName
	, FirstName
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY

--SELECT
--	ProductID
--	, SUM(UnitPrice) AS 'UnitPriceSum'
--	, SUM(OrderQty) AS 'OrderQtySum'
--FROM Sales.SalesOrderDetail
--WHERE
--ProductID BETWEEN 700 AND 710
--GROUP BY
--ProductID
--HAVING
--SUM(UnitPrice) > 10000
--ORDER BY
--ProductID ASC

/*
FROM
ON
JOIN
WHERE
GROUP BY
HAVING
SELECT
DISTINCT
ORDER BY
TOP
*/

/* Will return error due to processing order
SELECT
TOP 3 PERCENT
	JobTitle
	, MaritalStatus
	, YEAR(HireDate) AS 'YearHired'
FROM HumanResources.Employee
WHERE YearHired > 2003
ORDER BY
	YearHired
*/

SELECT
TOP 3 PERCENT
	JobTitle
	, MaritalStatus
	, YEAR(HireDate) AS 'YearHired'
FROM HumanResources.Employee
WHERE YEAR(HireDate) > 2003
ORDER BY
	YearHired


SELECT
	CurrencyCode
	, Name
FROM Sales.Currency
WHERE CurrencyCode IN('AFA','DZD','AUD')