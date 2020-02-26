--Lesson 25

--USE [AdventureWorks2012]
--GO

USE [AdventureWorks2017]
GO

------------------------------------
SELECT TOP 20
	[BusinessEntityID]
FROM [Person].[Person]
ORDER BY 1 DESC

------------------------------------
SELECT
	*
FROM [dbo].[ufnGetContactInformation](20770)

---------------------------------------
SELECT
	*
FROM [dbo].[ufnGetContactInformation](NULL)