------------Lesson 34
USE [AdventureWorks2012];
GO

--------------------------------
IF OBJECT_ID('dbo.MyTable', 'U') IS NOT NULL
DROP TABLE dbo.MyTable;

CREATE TABLE dbo.MyTable
(
	Id int IDENTITY
);

INSERT INTO dbo.MyTable DEFAULT VALUES;
GO 25

SELECT
	*
FROM dbo.MyTable;

--------------------------------------------------------
DECLARE	@i int = 1
WHILE @i <= 20
BEGIN
	PRINT @i
	SET @i = @i + 1;
END

--------------------------------------------------------
DECLARE	@i int = 1
WHILE @i <= 20
BEGIN
	IF @i = 10 BREAK;
	PRINT @i
	SET @i = @i + 1;
END

--------------------------------------------------------
DECLARE	@i int = 1
WHILE @i <= 20
BEGIN
	SET @i = @i + 1;
	IF @i %2 <> 0 CONTINUE;
	PRINT @i	
END