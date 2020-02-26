------------Lesson 31
--USE [AdventureWorks2012]
--GO

USE [MrBool]
GO

--------------------------------
SELECT
	*
FROM [dbo].[Letter]

SELECT
	*
FROM [dbo].[Letter2]

-------------------------------------
SELECT
	[Letter]
FROM [dbo].[Letter]
INTERSECT
SELECT
	[Letter]
FROM [dbo].[Letter2]

-------------------------------------
SELECT
	[Letter]
FROM [dbo].[Letter]
EXCEPT
SELECT
	[Letter]
FROM [dbo].[Letter2]

-------------------------------------
SELECT
	[Letter]
FROM [dbo].[Letter2]
EXCEPT
SELECT
	[Letter]
FROM [dbo].[Letter]

-------------------------------------
SELECT
	[Letter]
FROM [dbo].[Letter]
UNION
SELECT
	[Letter]
FROM [dbo].[Letter2]

-------------------------------------
SELECT
	[Letter]
FROM [dbo].[Letter]
UNION ALL
SELECT
	[Letter]
FROM [dbo].[Letter2]