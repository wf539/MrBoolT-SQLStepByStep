---------------------------Lesson 32
IF OBJECT_ID('utStudentTrigger', 'TR') IS NOT NULL
DROP TRIGGER utStudentTrigger
GO

CREATE TRIGGER utStudentTrigger
ON [dbo].[StudentsSP]
AFTER INSERT, UPDATE
AS RAISERROR ('StudentsSP Table changed!', 16, 10)
GO

SELECT
	*
FROM [dbo].[StudentsSP]

INSERT INTO [dbo].[StudentsSP]
VALUES ('Ayab', 'BD', 'MATH101');

UPDATE [dbo].[StudentsSP]
SET [LastName] = 'Boudiab'
WHERE
	[Id] = 12;

IF EXISTS(
	SELECT
		*
	FROM sys.triggers
	WHERE
		parent_class = 0
		AND name = 'utProtectProc'
)
DROP TRIGGER utProtectProc
ON DATABASE;
GO

CREATE TRIGGER utProtectProc
ON DATABASE
FOR drop_procedure
AS 
	RAISERROR('You must disable the Trigger ''utProtectProc'' to drop Procedures', 10, 1)
	ROLLBACK
GO

DROP PROCEDURE dbo.uspProcC