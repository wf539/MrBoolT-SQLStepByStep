--Lesson 8

USE AdventureWorks2017
GO

SELECT TOP(5)
	BusinessEntityID
	, PersonType
	, FirstName
	, LastName
FROM Person.Person
ORDER BY BusinessEntityID DESC

SELECT TOP(5)
	BusinessEntityID
	, PersonType
	, FirstName
	, LastName
FROM Person.Person
ORDER BY 1 DESC

SELECT TOP(5)
	BusinessEntityID
	, PersonType
	, FirstName
	, LastName
FROM Person.Person
ORDER BY 3 DESC

SELECT TOP(5) PERCENT
	BusinessEntityID
	, PersonType
	, FirstName
	, LastName
FROM Person.Person
ORDER BY BusinessEntityID DESC

SELECT
COUNT(*) * (5/100.0) --998.600000
FROM Person.Person

SELECT
	BusinessEntityID
	, FirstName
	, LastName
	, ModifiedDate
FROM Person.Person
WHERE
LastName = 'Allen'

--This is a single line comment
SELECT TOP 5 WITH TIES
	BusinessEntityID
	, FirstName
	, LastName
	, ModifiedDate
FROM Person.Person
WHERE
LastName = 'Allen'
ORDER BY LastName

/*
This
is
a
comment
*/

SELECT
	ProductID
	, SUM(UnitPrice) AS 'UnitPriceSum'
	, SUM(OrderQty) AS 'OrderQtySum'
FROM Sales.SalesOrderDetail
WHERE
ProductID BETWEEN 700 AND 710
GROUP BY
ProductID
HAVING
SUM(UnitPrice) > 10000
ORDER BY
ProductID ASC