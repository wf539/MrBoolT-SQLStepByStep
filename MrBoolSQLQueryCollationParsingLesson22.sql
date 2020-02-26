--Lesson 22

USE [AdventureWorks2012]
GO

------------------------------------
SELECT
	Name
	, Description
FROM sys.fn_helpcollations()

SELECT
	[FirstName]
	, [MiddleName]
	, [LastName]
FROM [Person].[Person]
WHERE
	[LastName] = 'Diaz'

SELECT
	[FirstName]
	, [MiddleName]
	, [LastName]
FROM [Person].[Person]
WHERE
	[LastName] COLLATE Latin1_General_CS_AS = 'diaz'

-------------------------------------------------------
SELECT
	CAST('20180917' AS DATETIME) AS 'New date'

-------Returns Out of range error:
SELECT
	CAST('20180532' AS DATETIME) AS 'New date'

---------------------------Returns NULL as opposed to an Error
SELECT
	TRY_CAST('20180532' AS DATETIME) AS 'New date'

-------------------------------------------------
SELECT
	CONVERT(CHAR(8), CURRENT_TIMESTAMP, 112)

--------------------------------------------Returns NULL as opposed to an Error
SELECT
	TRY_CONVERT(DATETIME, '20130432')

---------------------------------------------
SELECT
	PARSE('05/13/2013' AS DATETIME)

---------------------------------------------
SELECT
	PARSE('05/13/2013' AS DATETIME USING 'en-US')

SELECT
	PARSE('05/13/2013' AS DATETIME USING 'en-GB')

--------------------------------------------Returns NULL as opposed to an Error
SELECT
	TRY_PARSE('05/13/2013' AS DATETIME USING 'en-GB')