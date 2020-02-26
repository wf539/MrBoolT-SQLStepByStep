------------------------Lesson 36
USE [AdventureWorks2017]
GO

-----------------------------------
SELECT TOP 10
	*
FROM [Sales].[SalesOrderHeader];

-------------------------------------
WITH cte1
AS
(
	SELECT 
		YEAR(OrderDate) AS [OrderYear]
		, [CustomerId]
	FROM [Sales].[SalesOrderHeader]
),
cte2
AS
(
	SELECT
		OrderYear
		, COUNT(DISTINCT [CustomerID]) AS [Number of customers]
	FROM cte1
	GROUP BY
		OrderYear
)
SELECT
	OrderYear
	, [Number of customers]
FROM cte2

----------------------------
USE [MrBool]
GO

PRINT 'Dynamic SQL in action!';

DECLARE	@sql AS VARCHAR(100);
SET		@sql = 'PRINT ''Dynamic SQL in action!'';'
EXEC(@sql);

--------------------------------------------
--DECLARE	@sql AS NVARCHAR(100);
--SET		@sql = 'SELECT
--					FirstName
--					, LastName
--					, Course
--				FROM StudentsSP
--				WHERE
--					Id = @Id';
--EXEC sp_executesql
--	@stmt = @sql
--	, @params = N'@Id AS INT'
--	, @Id = 10;

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
SET @sql = 'SELECT 
			FirstName
			, LastName
			, Course
			FROM StudentsSP
			WHERE Id = @Id';

EXEC sp_executesql
	@stmt = @sql
	, @params = N'@Id AS INT'
	, @Id = 10;