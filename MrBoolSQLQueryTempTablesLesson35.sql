------------Lesson 35
--USE [AdventureWorks2012]
--GO

USE [MrBool]
GO

--------------------------------
DROP TABLE #MyTempTable

CREATE TABLE #MyTempTable
(
	Id INT IDENTITY
)

INSERT INTO #MyTempTable DEFAULT VALUES
GO 5

SELECT
	*
FROM #MyTempTable

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
-- Create date: 2018-09-29
-- Description:	Employ Temp Tables
-- =============================================
CREATE PROCEDURE uspProcA
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	EXEC dbo.uspProcB
END
GO

-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		William Farmer pp. Ayab Boudiab
-- Create date: 2018-09-29
-- Description:	Employ Temp Tables
-- =============================================
CREATE PROCEDURE uspProcB
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	EXEC dbo.uspProcC
END
GO

-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		William Farmer pp. Ayab Boudiab
-- Create date: 2018-09-29
-- Description:	Employ Temp Tables
-- =============================================
CREATE PROCEDURE uspProcC
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		
    -- Insert statements for procedure here
	CREATE TABLE #LocalTempTable
	(
		Id INT
		, Name VARCHAR(50)
	)

	INSERT INTO #LocalTempTable
	VALUES
		(1, 'Test1')
		, (2, 'Test2')
		, (3, 'Test3');

	EXEC dbo.uspProcD
END
GO

-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		William Farmer pp. Ayab Boudiab
-- Create date: 2018-09-29
-- Description:	Employ Temp Tables
-- =============================================
CREATE PROCEDURE uspProcD
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		*
	FROM #LocalTempTable
END
GO

EXEC uspProcA

CREATE TABLE ##MyGlobalTempTable
(
	Id INT IDENTITY 
)

INSERT INTO ##MyGlobalTempTable DEFAULT VALUES
GO 10

SELECT
	*
FROM ##MyGlobalTempTable

DECLARE @MyTable TABLE
(
	Id INT
	, Name VARCHAR(50)
)

INSERT INTO @MyTable
VALUES
	(1, 'Ayad')
	, (2, 'James');

SELECT
	*
FROM @MyTable