--Math functions
Select ABS(-25),Ceiling(25.2),Floor(25.2)
Select Power(3,2),Sqrt(25),Square(5)
Select PI(),Round(157.732,2)
Select EXP(2),LOG(10),LOG10(5)
Select sin(3.1415),cos(3.1415),tan(3.1415)
Select SIGN(-25),RAND()
--String functions
Select LEN('HII'),LOWER('Nam'),UPPER('Nam')
Select LEFT('Name',3),Right('Name',3)
Select SUBSTRING('Mann Mavani',3,8)
Select REPLACE('abcabcabc','c','5')
Select ASCII('a'),CHAR(97)
Select LTRIM('	hello world		')
Select Space(10)+CAST(10.58 as int)
Select CONVERT(int,10.58)
Select CONCAT('Darshan ','Uni')
Select REVERSE('Darshan'),REPLICATE('HII',3)
--Date Functions
Select GETDATE()
Select CONVERT(VARCHAR, GETDATE(),100)
Select DATEDIFF(MONTH,'2008-12-31','2009-03-31')
Select DAY('1-Jan-2021'),MONTH('1-Jan-2021')
Select YEAR('1-Jan-2021')
Select DATEADD(YEAR, 5, GETDATE())
Select DATENAME(MONTH,GETDATE())
Select DATEPART(MONTH, GETDATE())
Select EOMONTH(GETDATE())
	


	Select Substring('1234567890112',3,10)