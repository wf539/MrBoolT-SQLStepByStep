-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		William Farmer pp Ayab Boudiab
-- Create date: 2018-09-26
-- Description:	Mr Bool Lesson 27 More about stored procedures
-- =============================================
CREATE PROCEDURE uspStudentsPerCourse 
	-- Add the parameters for the stored procedure here
	@Course varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Course IS NULL
		SELECT
		[FirstName]
		, [LastName]
		, [Course]
	FROM StudentsSP
	ELSE
	SELECT
		[FirstName]
		, [LastName]
		, [Course]
	FROM StudentsSP
	WHERE
		Course LIKE (@Course + '%')
END
GO

---------------------------------------------
EXECUTE uspStudentsPerCourse 'CSC'

-----------------
EXEC uspStudentsPerCourse NULL