PRINT 'Hello World!'
PRINT 'Testing...'
PRINT 'There are' + ' many items ' + 'to print'

SELECT 'Hello from T-SQL'
SELECT (20 + 25) AS 'Result'

SELECT UPPER('test')
SELECT LOWER('this is a test')

SELECT UPPER(SUBSTRING('This is a test', 11, 4))

SELECT STUFF('this is a test', 9, 1, 'the third')

SELECT STR(456.72, 6, 1)

SELECT 'Start here' + SPACE(7) + 'then resume'

SELECT LEN('st ring    w ith      spac es     ')

SELECT RTRIM('st ring    w ith      spac es     ')

SELECT LTRIM('              st ring    w ith      spac es     ')

SELECT LTRIM(RTRIM('   test     '))

SELECT RIGHT('this is a test', 3)

SELECT LEFT('this is a test', 7)

SELECT REVERSE('This is a test')

SELECT REPLICATE('This is a test ', 7)

SELECT REPLACE('This is a test ', 'test', 'TEST')