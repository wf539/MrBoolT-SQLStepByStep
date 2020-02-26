------------Lesson 30
USE [AdventureWorks2012]
GO

--------------------------------
CREATE TABLE #Assistants
(
	Id int NOT NULL IDENTITY(1,1)
	, Description varchar(100)
);

DECLARE	@BusinessEntityId int;
DECLARE	@JobTitle varchar(50);
DECLARE	@i int = 0;

DECLARE	Employee_Cursor CURSOR FOR 
SELECT
	[BusinessEntityID]
	, [JobTitle]
FROM [HumanResources].[Employee]
WHERE
	[JobTitle] LIKE '%assistant%'
OPEN Employee_Cursor;
FETCH NEXT FROM Employee_Cursor
	INTO @BusinessEntityId
	, @JobTitle;

WHILE @@FETCH_STATUS = 0
BEGIN
	INSERT INTO #Assistants
	VALUES (@JobTitle)
	SET @i = @i + 1
	FETCH NEXT FROM Employee_Cursor
		INTO @BusinessEntityId
		, @JobTitle;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

PRINT 'There are ' + CONVERT(varchar(10), @i) + ' Assistants';

SELECT DISTINCT
	[Description]
FROM #Assistants;

--DROP TABLE #Assistants