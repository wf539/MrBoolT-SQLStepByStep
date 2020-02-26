------------------------Lesson 37
USE [MrBool]
GO

-----------------------------------
--SELECT
--	[Id]
--	, [FirstName]
--	, [LastName]
--	, [Course]
--FROM [dbo].[StudentsSP]

--INSERT INTO [dbo].[StudentsSP]
--OUTPUT
--	inserted.FirstName
--	, inserted.LastName
--VALUES ('Brad', 'Pitt', 'MATH300');

SELECT [id]
      ,[FirstName]
      ,[LastName]
      ,[EnrolDate]
  FROM [MrBool].[dbo].[Customer]

INSERT INTO [dbo].[Customer]
OUTPUT
	inserted.FirstName
	, inserted.LastName
VALUES (7, 'Brad', 'Pitt', GETUTCDATE());

---------------------------------------------------
DECLARE @Names TABLE
(
	First VARCHAR(50)
	, Last VARCHAR(50)
);

INSERT INTO [dbo].[Customer]
OUTPUT
	inserted.FirstName
	, inserted.LastName
INTO @Names
VALUES (8, 'Brad2', 'Pitt2', GETUTCDATE());

SELECT
	*
FROM @Names;

--verify added row
SELECT [id]
      ,[FirstName]
      ,[LastName]
      ,[EnrolDate]
  FROM [MrBool].[dbo].[Customer]

  --------------------------------------------
  DELETE FROM [dbo].[Customer]
  OUTPUT
	deleted.FirstName
	, deleted.LastName
	, deleted.EnrolDate
  WHERE 
	[FirstName] LIKE '%2';

--verify deleted row
SELECT [id]
      ,[FirstName]
      ,[LastName]
      ,[EnrolDate]
  FROM [MrBool].[dbo].[Customer]

--------------------------------------------------------------
DECLARE @AffectedNames TABLE
(
	OldName VARCHAR(50)
	, [NewName] VARCHAR(50)
	, OldSurname VARCHAR(50)
	, NewSurname VARCHAR(50)
	--, OldDate DATETIME
	--, NewDate DATETIME
);

UPDATE [dbo].[Customer]
SET 
	[FirstName] = 'William Brad'
	, [LastName] = 'Pitt the Younger'
	--, [EnrolDate] = GETUTCDATE()
OUTPUT
	deleted.FirstName
	, deleted.LastName
	--, deleted.EnrolDate
	, inserted.FirstName
	, inserted.LastName
	--, inserted.EnrolDate
INTO @AffectedNames
WHERE
	[FirstName] LIKE 'br%'; --not good

--verify updated row
SELECT [id]
      ,[FirstName]
      ,[LastName]
      ,[EnrolDate]
  FROM [MrBool].[dbo].[Customer]

UPDATE [dbo].[Customer]
SET 
	[LastName] = 'Pitt the Elder'
WHERE id = 5

--------------------------------------

MERGE CUSTOMER AS TARGET
USING
(SELECT
	9
	, 'First'
	, 'Last2'
)
AS SOURCE(
	id
	, FirstName
	, LastName
)
ON
(
	TARGET.FirstName = SOURCE.FirstName
	AND TARGET.LastName = SOURCE.LastName
)
WHEN MATCHED THEN
UPDATE
SET id = SOURCE.id
WHEN NOT MATCHED THEN
INSERT
(
	id
	, FirstName
	, LastName
)
VALUES
(
	SOURCE.id
	, SOURCE.FirstName
	, SOURCE.LastName
)
OUTPUT
	deleted.*
	, $action
	, inserted.*;