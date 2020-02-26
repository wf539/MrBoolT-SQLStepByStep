--Lesson 16

USE [AdventureWorks2012]
GO

--Info on columns in Person.Person table
SELECT 
	name
	, type_name(system_type_id) AS column_type
	, max_length
	, collation_name
	, is_nullable
FROM sys.columns
WHERE object_id = Object_id('Person.Person')

----
SELECT
	table_catalog
	, table_schema
	, table_name
	, column_name
	, column_default
FROM AdventureWorks2012.INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_NAME = 'Product'

----
SELECT
	ROUTINE_NAME
	, ROUTINE_DEFINITION
FROM AdventureWorks2012.INFORMATION_SCHEMA.ROUTINES
WHERE
	ROUTINE_NAME LIKE '%Product%'

--
SELECT
	IST.TABLE_NAME AS [Table]
	, ISC.COLUMN_NAME AS [Column]
	, ISC.IS_NULLABLE AS [Allows nulls?]
	, ISC.DATA_TYPE AS [Type]
FROM INFORMATION_SCHEMA.TABLES IST
JOIN INFORMATION_SCHEMA.COLUMNS ISC
ON IST.TABLE_NAME = ISC.TABLE_NAME
WHERE
	IST.TABLE_NAME NOT LIKE '%sys%'
	AND IST.TABLE_NAME <> 'dtproperties'
	AND IST.TABLE_SCHEMA <> 'INFORMATION_SCHEMA'
	AND IST.TABLE_NAME LIKE '%Person%'
	--AND ISC.COLUMN_NAME LIKE '%Product%'
ORDER BY
	IST.TABLE_NAME
	, ISC.ORDINAL_POSITION

-------
EXEC sys.sp_tables

----------
EXEC sys.sp_help @objname = 'Production.Product'

----
SELECT OBJECTPROPERTY(OBJECT_ID('Production.Product'), 'TableHasPrimaryKey')