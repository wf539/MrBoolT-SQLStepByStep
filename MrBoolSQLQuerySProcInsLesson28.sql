--Lesson 28
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
-- Author:		William Farmer pp. Ayab Boudiab
-- Create date: 2018-09-28
-- Description:	Insert Student record
-- =============================================
CREATE PROCEDURE uspInsertStudent 
	-- Add the parameters for the stored procedure here
	@First VARCHAR(50)
	, @Last VARCHAR(50)
	, @Course VARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO StudentsSP
	VALUES
	(
		@First
		, @Last
		, ISNULL(@Course, 'Not defined')
	)
END
GO

------------------------------------------
DECLARE	@firstname VARCHAR(50) = 'Rick';
DECLARE	@lastname VARCHAR(50) = 'Astley';
DECLARE @course VARCHAR(100) = 'MUS202';

EXEC dbo.uspInsertStudent @firstname, @lastname, @course;

SELECT
	*
FROM [dbo].[StudentsSP]

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
-- Author:		William Farmer pp. Ayab Boudiab
-- Create date: 2018-09-28
-- Description:	Update Student record
-- =============================================
CREATE PROCEDURE uspUpdateStudentCourse 
	-- Add the parameters for the stored procedure here
	@CurrentCourse VARCHAR(100)
	, @NewCourse VARCHAR(100) = 'MATH100'
	, @AffectedCount INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[StudentsSP]
	SET [Course] = @NewCourse
	WHERE [Course] = @CurrentCourse
	SET @AffectedCount = @@ROWCOUNT;
END
GO

DECLARE	@count INT
EXEC dbo.uspUpdateStudentCourse 'MATH101', 'MATH102', @count OUTPUT
SELECT @count AS 'Count affected records';

DECLARE	@count INT
EXEC dbo.uspUpdateStudentCourse 'MATH102', @AffectedCount = @count OUTPUT
SELECT @count AS 'Count affected records';