--14:57

--'2018-02-18 07:29:44.456'

SELECT DATEADD(HOUR, 7, '2018-02-18 07:29:44.456')  --d, m, minute, second

SELECT DATEDIFF(HOUR, '2018-01-18 07:29:44.456', '2018-02-18 07:29:44.456')

SELECT DATEPART(DAYOFYEAR,'2018-02-18 07:29:44.456')

SELECT GETUTCDATE()

SELECT ISDATE('2018-02-29')

SELECT MONTH('2018-9-07')

SELECT YEAR(GETUTCDATE())

SELECT SYSDATETIME()