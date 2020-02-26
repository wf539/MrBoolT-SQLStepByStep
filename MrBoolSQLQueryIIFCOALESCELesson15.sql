--Lesson 15

USE [AdventureWorks2012]
GO

--
DECLARE	@a AS INT
SET		@a = 38444763
DECLARE	@b AS INT
SET		@b = 2356

SELECT IIF((@a % @b) = 0, '@a is divisible by @b', '@a is not divisible by @b') AS Result

--
DECLARE	@x AS SMALLINT
--SET		@x = 63
DECLARE	@y AS SMALLINT
DECLARE	@z AS SMALLINT
SET		@z = 57

SELECT CAST(COALESCE(@x, @y, @z) AS MONEY) AS 'Lamp price'

--
SELECT 
	name
	, object_id
	, type_desc
	, create_date
FROM sys.objects

--
SELECT 
	SCHEMA_NAME(schema_id) AS TableSchemaName
	, name AS TableName
FROM sys.tables

--
SELECT	
	name
	, object_id
	, type_desc
	, create_date
FROM	sys.views

--
