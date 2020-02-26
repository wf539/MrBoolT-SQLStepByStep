--Lesson 17

USE [MrBool]
GO

--
SELECT
*
FROM [dbo].[Customer]

INSERT INTO [dbo].[Customer]
VALUES
(1, 'Tim', 'Allen', GETUTCDATE());

INSERT INTO [dbo].[Customer]
VALUES
	(2, 'Lisa', 'Simpson', '20130502')
	, (3, 'Mike', 'Well', '20120201')
	, (4, 'Chris', 'Hampton', '20100110')
	, (5, 'Brian', 'Jackson', '20091013');

INSERT INTO [dbo].[Customer]
	(id
	, FirstName
	, LastName)
VALUES
	(6
	, 'Liz'
	, 'O''Brian');

-------------
USE [MrBool]
GO

/****** Object:  Table [dbo].[Customer2]    Script Date: 12/09/2018 21:14:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer2](
	[id] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[EnrolDate] [datetime] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customer2] ADD  CONSTRAINT [DF_Customer2_EnrolDate]  DEFAULT ('20130101') FOR [EnrolDate]
GO

--------
SELECT
*
FROM [dbo].[Customer2]

--------
INSERT INTO [dbo].[Customer2]
	(id
	, FirstName
	, LastName
	, EnrolDate)
SELECT
	id
	, FirstName
	, LastName
	, EnrolDate
FROM [dbo].[Customer]
WHERE
	EnrolDate > '20120101'