--Lesson 13

USE AdventureWorks2017
GO

--
DECLARE @Price AS MONEY
SET		@Price = $53
DECLARE	@ExpectedPrice AS MONEY
SET		@ExpectedPrice = $31

IF @Price >= @ExpectedPrice
BEGIN
	PRINT 'It is better to sell'
	PRINT 'I think you are making a good profit!'
END
ELSE
BEGIN
	PRINT 'It is not worth it yet'
	PRINT 'You better hold on to the shares a little longer'
END

--PRINT 'Hello World!'

--
DECLARE	@FirstName AS VARCHAR(100)
SET		@FirstName = NULL --'Jim'
DECLARE	@LastName AS VARCHAR(100)
SET		@LastName = 'Tester'
--SELECT @FirstName + ' ' + @LastName
SELECT ISNULL(@FirstName, '') + ' ' + ISNULL(@LastName, '')