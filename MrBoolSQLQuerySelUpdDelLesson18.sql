--Lesson 18

USE [MrBool]
GO

--
SELECT
	FirstName
	, LastName
INTO [dbo].[Customer3]
FROM [dbo].[Customer]
WHERE
	LastName LIKE '%e%'

---------
SELECT
*
FROM [dbo].[Customer3]

---------
UPDATE [dbo].[Customer3]
SET [LastName] = 'Wells'
WHERE
	FirstName = 'Mike'

-----------
DELETE
FROM [dbo].[Customer3]
WHERE
	FirstName = 'Tim'

------------
SELECT
*
--DELETE
FROM [dbo].[Customer3]
WHERE
	LastName LIKE 'w%'

--
BEGIN TRAN
DELETE
FROM [dbo].[Customer3]
WHERE
	LastName LIKE '%e%'

--COMMIT
--ROLLBACK

-------------
SELECT
*
FROM [dbo].[Customer2]

-----------
TRUNCATE TABLE [dbo].[Customer2]

------------
DROP TABLE [dbo].[Customer3]
