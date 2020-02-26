--D SQL
USE [MrBool]
GO

PRINT 'Dynamic SQL in acion...';

--Execute dynamic SQL Method 1
DECLARE @sql VARCHAR(100);
SET @sql = 'PRINT ''Dynamic SQL in acion...'';'
EXEC(@sql);

--test
--EXEC('PRINT ''Dynamic SQL in acion...'';');

--Method 2
DECLARE @sql NVARCHAR(100);
SET @sql = 'SELECT FirstName, LastName, Course
			FROM StudentsSP
			WHERE Id = @Id';

EXEC sp_executesql
	@stmt = @sql,
	@params = N'@Id AS INT',
	@Id = 10;