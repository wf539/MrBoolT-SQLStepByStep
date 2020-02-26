--Lesson 11

USE AdventureWorks2017
GO

--decimal
DECLARE	@MyDecimal AS decimal(7, 2)
SET		@MyDecimal = 45823.98
SELECT	@MyDecimal	AS MyDecimal

--money
DECLARE	@MyMoney AS money
SET		@MyMoney = $99223720368
SELECT	@MyMoney AS MyMoney

--smallmoney
DECLARE @MySmallMoney AS smallmoney
SET		@MySmallMoney = $214744.78
SELECT	@MySmallMoney AS MySmallMoney

--CAST types
DECLARE	@x AS int
SET		@x = 3245353
SELECT	@x AS 'x'
DECLARE	@y AS money
SET		@y = CAST(@x AS money)
SELECT	@y AS 'y'

--float
DECLARE	@MyFloat AS float
SET		@MyFloat = 2144333343744.78
SELECT	@MyFloat AS MyFloat

--real
DECLARE	@MyReal	AS real
SET		@MyReal = 21443744.78
SELECT	@MyReal	AS MyReal

--date
DECLARE	@MyDate	AS date
SET		@MyDate = '2018-09-08'
SELECT	@MyDate	AS MyDate

--datetime offset. Has timezone awareness
DECLARE	@MyDateTimeOffset	AS datetimeoffset
SET		@MyDateTimeOffset = '2018-09-08 17:56:18 +01:0'
SELECT	@MyDateTimeOffset	AS MyDateTimeOffset

--smalldatetime. Less accuracy
DECLARE	@MySmallDateTime	AS smalldatetime
SET		@MySmallDateTime = '2018-09-08 22:48:23.267'
SELECT	@MySmallDateTime	AS MySmallDateTime

--datetime
DECLARE	@MyDateTime	AS datetime
SET		@MyDateTime = '2018-09-08 23:59:59.999'
SELECT	@MyDateTime	AS MyDateTime

--datetime2: more precision
DECLARE	@MyDateTime2	AS datetime2
SET		@MyDateTime2 = '2018-09-08 23:59:59.1235487'
SELECT	@MyDateTime2	AS MyDateTime2