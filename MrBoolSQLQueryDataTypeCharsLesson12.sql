--Lesson 12

USE AdventureWorks2017
GO

--CHAR(n) n= 1 to 8000 NCHAR: unicode
DECLARE	@MyChar AS CHAR(3)
SET		@MyChar = 'abc'
SELECT	@MyChar AS MyChar
SELECT	LEN(@MyChar) AS 'MyChar length'

--Type text will be deprecated. Do not use
--DECLARE	@MyText AS text
--SET		@MyText = 'placeholder'
--SELECT	@MyText AS MyText

--VARCHAR n=1 to 8000. NVARCHAR: unicode
DECLARE	@MyVarChar AS VARCHAR(MAX)
SET		@MyVarChar = 'abc'
SELECT	@MyVarChar AS MyVarChar
SELECT	LEN(@MyVarChar) AS 'MyVarChar length'

--UNIQUEIDENTIFIER
DECLARE @MyId AS UNIQUEIDENTIFIER
SET		@MyId = NEWID()
SELECT	@MyId

--XML
DECLARE	@MyXML AS XML
SET		@MyXML = (SELECT TOP(1) [Demographics] FROM Sales.Store)
SELECT	@MyXML