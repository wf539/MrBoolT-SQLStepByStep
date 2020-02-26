--Lesson 23

USE [AdventureWorks2012]
GO

------------------------------------
SELECT DISTINCT
	[ProductID]
FROM [Production].[ProductInventory]
WHERE
	[LocationID] = 6

--------------------------------------
SELECT [dbo].[ufnGetStock](325)

--------------------------------------
DECLARE	@Result [int]
SET		@Result = [dbo].[ufnGetStock](325)
SELECT	@Result AS [Result]