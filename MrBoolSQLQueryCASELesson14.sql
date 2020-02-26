--Lesson 14

USE AdventureWorks2017
GO

--with variables
DECLARE	@Grade AS TINYINT
SET		@Grade = 90
DECLARE	@Result AS VARCHAR(100)
SELECT @Result = 
	CASE
		WHEN @Grade >= 90
		THEN 'You got an ''A'''
		WHEN (@Grade >= 80) AND (@Grade < 90)
		THEN 'You got a ''B'''
		WHEN (@Grade >= 70) AND (@Grade < 80)
		THEN 'You got a ''C'''
	END
PRINT @Result

--Run query against a database relation
SELECT
	ProductNumber
	, Category = 
		CASE ProductLine
			WHEN 'R' THEN 'ROAD'
			WHEN 'M' THEN 'MOUNTAIN'
			WHEN 'T' THEN 'TOURING'
			WHEN 'S' THEN 'OTHER'
		ELSE 'Not for sale'
	END
	, Name
FROM Production.Product
ORDER BY ProductNumber

--
SELECT
	ProductNumber
	, Name
	, 'Price range' =
		CASE
			WHEN ListPrice = 0 THEN 'Mfg item - not for resale'
			WHEN ListPrice < 50 THEN 'Under $50'
			WHEN ListPrice >= 50 AND ListPrice < 250 THEN 'Under $250'
			WHEN ListPrice >= 250 AND ListPrice < 1000 THEN 'Under $1000'
			ELSE 'Over $10000'
		END
FROM Production.Product
ORDER BY ProductNumber