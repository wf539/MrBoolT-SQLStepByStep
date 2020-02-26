------------Lesson 29
BEGIN TRY
	SELECT 1/4
END TRY
BEGIN CATCH
	PRINT 'Inside the Catch block'
END CATCH
	PRINT 'Done'

------------------------------
BEGIN TRY
	SELECT 1/0 AS [Result]
END TRY
BEGIN CATCH
	--PRINT 'Inside the Catch block'
	SELECT
	ERROR_NUMBER() AS [Error number]
	, ERROR_SEVERITY() AS [Error severity]
	, ERROR_STATE() AS [Error state]
	, ERROR_PROCEDURE() AS [Error procedure]
	, ERROR_LINE() AS [Error line]
	, ERROR_MESSAGE() AS [Error message]
END CATCH
	PRINT 'Done'

------------------------------
BEGIN TRY
	SELECT 1/0 AS [Result]
END TRY
BEGIN CATCH
	PRINT 'Inside the Catch block';
	THROW;
	--SELECT
	--ERROR_NUMBER() AS [Error number]
	--, ERROR_SEVERITY() AS [Error severity]
	--, ERROR_STATE() AS [Error state]
	--, ERROR_PROCEDURE() AS [Error procedure]
	--, ERROR_LINE() AS [Error line]
	--, ERROR_MESSAGE() AS [Error message]
END CATCH
	PRINT 'Done'

----------------------------------------------------
USE [AdventureWorks2012]
GO

BEGIN TRANSACTION;
	
BEGIN TRY
	--Generate a constraint violation error
	DELETE
	FROM [Production].[Product]
	WHERE [ProductID] = 980;
END TRY
BEGIN CATCH
	SELECT
	ERROR_NUMBER() AS [Error number]
	, ERROR_SEVERITY() AS [Error severity]
	, ERROR_STATE() AS [Error state]
	, ERROR_PROCEDURE() AS [Error procedure]
	, ERROR_LINE() AS [Error line]
	, ERROR_MESSAGE() AS [Error message]

	IF @@TRANCOUNT > 0
	ROLLBACK TRANSACTION;
END CATCH;

IF @@TRANCOUNT > 0
COMMIT TRANSACTION;
GO