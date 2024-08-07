--String functions
--Part-A:
--1.	Find the length of following. (I) NULL    (II) �   hello     �(III)  Blank
		Select LEN(null),Len('   hello     '),len('')
--2.	Display your name in lower & upper case.
		Select LOWER('Name'),UPPER('Name')
--3.	Display first three characters of your name.
		Select LEFT('Name',3)
--4.	Display 3rd to 10th character of your name.
		Select SUBSTRING('Mann Mavani',3,8)
--5.	Write a query to convert �abc123efg� to �abcXYZefg� & �abcabcabc� to �ab5ab5ab5� using REPLACE.
		Select REPLACE('abc123efg','123','XYZ'),REPLACE('abcabcabc','c','5')
--6.	Write a query to display ASCII code for �a�,�A�,�z�,�Z�, 0, 9.
		Select ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9)
--7.	Write a query to display character based on number 97, 65,122,90,48,57.
		Select CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)
--8.	Write a query to remove spaces from left of a given string �	hello world		�.
		Select LTRIM('	hello world		')
--9.	Write a query to remove spaces from right of a given string �	hello world		�.
		Select RTRIM('	hello world		')
--10.	Write a query to display first 4 & Last 5 characters of �SQL Server�.
		Select LEFT ('sql server',4), RIGHT ('sql server',7) 
--11.	Write a query to convert a string �1234.56� to number (Use cast and convert function).
		Select CAST ('1234.56' as float) as 'Cast'
		Select CONVERT(float,'1234.56') as 'Convert'
--12.	Write a query to convert a float 10.58 to integer (Use cast and convert function).
		Select CAST (10.58 as int) as 'Cast'
		Select CONVERT(int,10.58) as 'Convert'
--13.	Put 10 space before your name using function.
		Select SPACE(10)+'Mann'
--14.	Combine two strings using + sign as well as CONCAT ().
		Select 'Darshan'+'University'
		Select CONCAT('Darshan ','University')
--15.	Find reverse of �Darshan�.
		Select REVERSE('Darshan')
--16.	Repeat your name 3 times.
		Select REPLICATE('HII',3)
--Part-B: Perform following queries on Student table of practical no 5.
--1.	Find the length of FirstName and LastName columns.
		Select LEN(FirstName),LEN(LastName) From STUDENTS
--2.	Display FirstName and LastName columns in lower & upper case.
		Select upper(FirstName),upper(LastName),lower(FirstName),lower(LASTNAME) From STUDENTS
--3.	Display first three characters of FirstName column.
		Select LEFT(FIRSTNAME,3) From STUDENTS
--4.	Display 3rd to 10th character of Website column.
		Select SUBSTRING(WEBSITE,3,8) From STUDENTS
--5.	Write a query to display first 4 & Last 5 characters of Website column.
		Select LEFT (Website,4), RIGHT (Website,7) from STUDENTS 
--Part-C: Perform following queries on Student table of practical no 5.
--1.	Put 10 space before FirstName using function.
		Select SPACE(10)+FirstName From STUDENTS
--2.	Combine FirstName and LastName columns using + sign as well as CONCAT ().
		Select FirstName+LASTNAME From STUDENTS
		Select Concat(FirstName,LASTNAME) From STUDENTS
--3.	Combine all columns using + sign as well as CONCAT ().
		Select FirstName+LASTNAME+CITY+WEBSITE , Concat(FirstName,LASTNAME,CITY,WEBSITE)  From STUDENTS
--4.	Find reverse of FirstName column.
		Select REVERSE(FIRSTNAME) From STUDENTS
--5.	Repeat FirstName column 3 times
		Select Replicate(FIRSTNAME,3) From STUDENTS
--6.	Give the Names which contains 5 characters.
		SELECT FirstName FROM Students
		WHERE LEN(FirstName) = 5
--7.	Combile the result as <EmpName> Lives in <City>.
		SELECT CONCAT(EmpName, ' Lives in ', City) FROM Emp_Math
--8.	Combine the result as <EmpName> receives <commission> per month.
		SELECT CONCAT(EmpName, ' receives ', Commission, ' per month') FROM Emp_Math

