--Lesson 7

USE AdventureWorks2017
GO

SELECT
	Name
	, ReasonType
FROM Sales.SalesReason
GROUP BY 
	ReasonType
	, Name

SELECT
	COUNT(Name) AS 'NameCount'
	, ReasonType
FROM Sales.SalesReason
GROUP BY ReasonType

SELECT
COUNT(*) AS 'PersonCount'
FROM Person.Person

SELECT
	PersonType
FROM Person.Person

SELECT
	DISTINCT(PersonType)
FROM Person.Person

SELECT
*
FROM Person.Person

SELECT TOP(5)
	BusinessEntityID
	, PersonType
	, FirstName
	, LastName
FROM Person.Person

SELECT TOP(5)
	BusinessEntityID
	, PersonType
	, FirstName
	, LastName
FROM Person.Person
ORDER BY BusinessEntityID DESC