--Lesson 24

USE [AdventureWorks2012]
GO

------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		William Farmer
-- Create date: 2018-09-18
-- Description:	Mr Bool exercise
-- =============================================
CREATE FUNCTION dbo.ufnGetFullAddress 
(
	@ID [int]
)
RETURNS varchar(250) --No square brackets!!
AS
BEGIN
	-- Declare the return variable here
	DECLARE @FullAddress AS varchar(250)

	-- Add the T-SQL statements to compute the return value here
	SELECT @FullAddress = (
		SELECT
			[AddressLine1] + ' ' + 
			ISNULL([AddressLine2], '') + ' ' + 
			[City] + ' ' + 
			SP.[Name] + ' ' + 
			[PostalCode]
		FROM [Person].[Address] A
		INNER JOIN [Person].[StateProvince] SP
		ON A.[StateProvinceID] = SP.[StateProvinceID]
		WHERE A.[AddressID] = @ID			
	)

	-- Return the result of the function
	RETURN ISNULL(@FullAddress, 'Address not known')

END
GO

---------------------------
SELECT [dbo].[ufnGetFullAddress](4) AS Address


-----------------------------------------
SELECT TOP 10
	[BusinessEntityID]
	, [AddressID]
	, [dbo].[ufnGetFullAddress]([AddressID]) AS [Full address]
FROM [Person].[BusinessEntityAddress]