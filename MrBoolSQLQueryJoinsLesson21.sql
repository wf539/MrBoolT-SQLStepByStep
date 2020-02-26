--Lesson 21

USE [MrBool]
GO

-----------------------
SELECT
	[ID]
	, [Description]
FROM [dbo].[Course]

-----------------------------
SELECT
	[ID]
	, [Name]
	, [CourseID]
FROM [dbo].[Student]

-------------------------
SELECT
*
FROM [dbo].[Student]
CROSS JOIN [dbo].[Course]

------------------------------
SELECT
COUNT(*) AS [Rows in Students Table]
FROM [dbo].[Student]

SELECT
COUNT(*) AS [Rows in Course Table]
FROM [dbo].[Course]

-----------------------------
SELECT
	--S.[ID]
	--, [Name]
	--, [CourseID]
	*
FROM [dbo].[Student] S
INNER JOIN [dbo].[Course] C
ON C.[ID] = S.[CourseID]

-------------------------------------
SELECT
	--S.[ID]
	--, [Name]
	--, [CourseID]
	*
FROM [dbo].[Student] S
LEFT JOIN [dbo].[Course] C
ON C.[ID] = S.[CourseID]

-----------------------------------------------
SELECT
	--S.[ID]
	--, [Name]
	--, [CourseID]
	*
FROM [dbo].[Student] S
RIGHT JOIN [dbo].[Course] C
ON C.[ID] = S.[CourseID]

-----------------------------------------
SELECT
	--S.[ID]
	--, [Name]
	--, [CourseID]
	*
FROM [dbo].[Student] S
FULL OUTER JOIN [dbo].[Course] C
ON C.[ID] = S.[CourseID]