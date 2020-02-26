--Lesson 10

USE AdventureWorks2017
GO

--bigint
DECLARE @MyBigInt bigint
SET @MyBigInt = 9223372036854775806
SELECT @MyBigInt AS MyBigInt

--int
DECLARE @MyInt int
SET @MyInt = 2147483647
SELECT @MyInt AS MyInt

--SELECT 2147483647/2 AS Value1
--	, 2147484799/2 AS Value2

--smallint
DECLARE @MySmallInt smallint
SET @MySmallInt = 32767
SELECT @MySmallInt AS MySmallInt

--tinyint
DECLARE @MyTinyInt tinyint
SET @MyTinyInt = 254
SELECT @MyTinyInt AS MyTinyInt

--DECLARE @MyTinyInt1 tinyint
--SET @MyTinyInt1 = 2543
--SELECT @MyTinyInt1 AS MyTinyInt1

--bit
DECLARE @MyBit bit
SET @MyBit = 'false'
SELECT @MyBit AS MyBit