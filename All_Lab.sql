--Lab-1 ALL Tables
--Create following tables using Query.
Create Table DEPOSIT(
	ACTNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2),
	ADATE DATETIME
)

Create Table BRANCH(
	BNAME VARCHAR(50),
	CITY VARCHAR(50)
)
Create Table CUSTOMERS(
	CNAME VARCHAR(50),
	CITY VARCHAR(50)
)
Create Table BORROW(
	LOANNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2)
)

--Insert the data into tables using Query as shown below.
-- DEPOSIT
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (101,'ANIL','VRCE',1000,1995-3-1)
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (102,'SUNIL','AJNI',5000,1996-1-4)
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (103,'MEHUL','KAROLBAGH',3500,1995-11-17)
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (104,'MADHURI','CHANDNI',1200,1995-12-17)
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (105,'PRAMOD','M.G.ROAD',3000,1996-3-27)
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (106,'SANDEEP','ANDHERI',2000,1996-3-31)
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (107,'SHIVANI','VIRAR',1000,1995-9-5)
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (108,'KRANTI','NEHRU PALACE',5000,1995-7-2)
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (109,'MINU','POWAI',7000,1995-8-10)
-- BRANCH 
INSERT INTO BRANCH VALUES ('VRCE','NAGPUR') 
INSERT INTO BRANCH VALUES ('AJNI','NAGPUR') 
INSERT INTO BRANCH VALUES ('KAROLBAGH','DELHI') 
INSERT INTO BRANCH VALUES ('CHANDI','DELHI') 
INSERT INTO BRANCH VALUES ('DHARAMPETH','NAGPUR') 
INSERT INTO BRANCH VALUES ('M.G.ROAD','BANGLORE') 
INSERT INTO BRANCH VALUES ('ANDHERI','BOMBAY') 
INSERT INTO BRANCH VALUES ('VIRAR','BOMBAY') 
INSERT INTO BRANCH VALUES ('NEHRU PALACE','DELHI') 
INSERT INTO BRANCH VALUES ('POWAI','BOMBAY')
-- CUSTOMERS 
INSERT INTO CUSTOMERS VALUES ('ANIL','CALCUTTA')
INSERT INTO CUSTOMERS VALUES ('SUNIL','DELHI')
INSERT INTO CUSTOMERS VALUES ('MEHUL','BARODA')
INSERT INTO CUSTOMERS VALUES ('MANDAR','PATNA')
INSERT INTO CUSTOMERS VALUES ('MADHURI','NAGPUR')
INSERT INTO CUSTOMERS VALUES ('PRAMOD','NAGPUR')
INSERT INTO CUSTOMERS VALUES ('SANDIP','SURAT')
INSERT INTO CUSTOMERS VALUES ('SHIVANI','BOMBAY')
INSERT INTO CUSTOMERS VALUES ('KRANTI','BOMBAY')
INSERT INTO CUSTOMERS VALUES ('NAREN','BOMBAY')

-- BORROW 
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES (201,'ANIL','VRCE',1000)
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES (206,'MEHUL','AJNI',5000)
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES (311,'SUNIL','DHARAMPETH',3000)
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES (321,'MADHURI','ANDHERI',2000)
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES (375,'PRAMOD','VIRAR',8000)
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES (481,'KRANTI','NEHRU PALACE',3000)

--Lab-2
--Part A:
--1.Retrieve all data from table DEPOSIT. 
	SELECT * FROM DEPOSIT
--2.Retrieve all data from table BORROW.
	SELECT * FROM BORROW
-- 3.Retrieve all data from table CUSTOMERS. 
	SELECT * FROM CUSTOMERS
--4.	Display Account No, Customer Name & Amount from DEPOSIT.
	SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT
--5.	Display Loan No, Amount from BORROW.
	SELECT LOANNO,AMOUNT FROM BORROW
--6.	Display loan details of all customers who belongs to �ANDHERI� branch from borrow table.
	SELECT *FROM BORROW
	WHERE BNAME = 'ANDHERI'
--7.	Give account no and amount of depositor, whose account no is equals to 106 from deposit table.
	SELECT ACTNO, AMOUNT FROM DEPOSIT
	WHERE ACTNO=106
--8.	Give name of borrowers having amount greater than 5000 from borrow table.
	SELECT CNAME FROM BORROW 
	WHERE AMOUNT > 5000
--9.	Give name of customers who opened account after date '1-12-96' from deposit table.
	SELECT CNAME FROM DEPOSIT
	WHERE ADATE > '1996-12-01'

-- 10.	Display name of customers whose account no is less than 105 from deposit table.
	SELECT CNAME FROM DEPOSIT
	WHERE ACTNO<105

--11.	Display name of customer who belongs to either �NAGPUR� or �DELHI� from customer table. (OR & IN)
	--Using OR: 
	SELECT CNAME FROM CUSTOMERS
	WHERE CITY='NAGPUR' OR CITY='DELHI'
	--Using IN: 
	SELECT CNAME FROM CUSTOMERS
	WHERE CITY IN('NAGPUR','DELHI')
--12.	Display name of customers with branch whose amount is greater than 4000 and account no is less than 105 from deposit table.
	SELECT CNAME, BNAME FROM DEPOSIT
	WHERE AMOUNT>4000 AND ACTNO<105
--13.	Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow table. (AND & BETWEEN)
	--Using AND: 
	SELECT * FROM BORROW
	WHERE AMOUNT>=3000 AND AMOUNT<=8000
	--Using BETWEEN: 
	SELECT * FROM BORROW
	WHERE AMOUNT BETWEEN 3000 AND 8000
--14.	Find all depositors who do not belongs to �ANDHERI� branch from deposit table.
	SELECT * FROM DEPOSIT
	WHERE BNAME <> 'ANDHERI'

--15.	Display Account No, Customer Name & Amount of such customers who belongs to �AJNI�, �KAROLBAGH� Or �M.G.ROAD� and Account No is less than 104 from deposit table.
SELECT ACTNO, CNAME, AMOUNT FROM DEPOSIT
WHERE BNAME IN ('AJNI','KAROLBAGH','M.G.ROAD') AND ACTNO<104

--Part B:
--1.	Display all the details of first five customers from deposit table.
	SELECT TOP 5 * FROM CUSTOMERS
--2.	Display all the details of first three depositors whose amount is greater than 1000.
	SELECT TOP 3 * FROM DEPOSIT
	WHERE AMOUNT>1000
--3.Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to �ANDHERI� from borrow table.
	SELECT TOP 5 LOANNO, CNAME FROM BORROW
	WHERE BNAME <> 'ANDHERI'

--4.	Retrieve all unique cities using DISTINCT. (Use Customers Table)
	SELECT DISTINCT CITY FROM CUSTOMERS
--5.	Retrieve all unique branches using DISTINCT. (Use Branch Table)
	SELECT DISTINCT BNAME FROM BRANCH
--Part C:
--1.	Retrieve top 50% record from table BORROW.
	SELECT TOP 50 PERCENT *FROM BORROW
--2.	Display top 10% amount from table DEPOSIT.
	SELECT TOP 10 PERCENT AMOUNT FROM DEPOSIT
--3.	Display top 25% customer who deposited more than 5000.
	SELECT TOP 25 PERCENT CNAME FROM DEPOSIT
	WHERE AMOUNT>5000
--4.	Retrieve first 10% Loan Amounts.
	SELECT TOP 10 PERCENT AMOUNT FROM BORROW
--5.	Retrieve all unique customer names with city.
	SELECT DISTINCT CNAME , CITY FROM CUSTOMERS 
--6.	Retrieve all Loan records with one more column in Loan Amount as 10% extra amount.
	SELECT *,(AMOUNT+AMOUNT*0.1) AS 'EXTRA AMOUNT' FROM BORROW
--7.	Retrieve all odd/even records from Borrow table.
		SELECT *FROM Borrow
		WHERE LOANNO % 2 = 0;

--Lab-3
--Select into Operation
--Part-A: 
--Create table as per following.
	--1.	Create table Worldcup from cricket with all the columns and data. 
		SELECT * INTO WorldCup FROM Cricket
	--2.	Create table T20 from cricket with first two columns with no data.
		SELECT Name, City INTO T20 FROM Cricket
		WHERE 1=2
	--3.	Create table IPL From Cricket with No Data
		SELECT * INTO IPL FROM Cricket
		Where 1=5
--Part-B: 
	--1.	Create table Employee_detail from Employee with all the columns and data. 
		SELECT * INTO Employee_detail FROM Employee
	--2.	Create table Employee_data from Employee with first two columns with no data.
		SELECT Name, City INTO Employee_data FROM Employee
		WHERE 1=6
	--3.	Create table Employee_info from Employee with no Data
		SELECT * INTO Employee_info FROM Employee
		WHERE 1=7
--Part-C: 
	--Perform following queries on Employee table.
	--1.	Insert the Data into Employee_info from Employee Whose CITY is Rajkot
		INSERT INTO Employee_info
		SELECT * FROM Employee 
		WHERE CITY = 'Rajkot'
	--2.	Insert the Data into Employee_info from Employee Whose age is more than 32.
		INSERT INTO Employee_info
		SELECT * FROM Employee 
		WHERE Age >32

--Update Operation
--Part-A: 
--From the above given tables perform the following queries (UPDATE Operation): 
	--1.	Update deposit amount of all customers from 3000 to 5000.
		UPDATE Deposit SET Amount=5000
		WHERE Amount=3000
	--2.	Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table) 
		UPDATE Borrow SET Bname='c.g.road'
		WHERE Cname='Anil' AND Bname='VRCE'
	--3.	Update Account No of SANDIP to 111 & Amount to 5000.
		UPDATE Deposit SET Actno=111, Amount=5000
		WHERE Cname='Sandeep'
--4.	Update amount of KRANTI to 7000.
		UPDATE Deposit SET Amount=7000
		WHERE Cname='Kranti'
--5.	Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
		UPDATE BRANCH SET BNAME='ANDHERI WEST'
		WHERE Bname='ANDHERI'
--6.	Update branch name of MEHUL to NEHRU PALACE.
		UPDATE DEPOSIT SET BNAME='NEHRU PALACE'
		WHERE CNAME='Mehul'
--7.	Update deposit amount of all depositors to 5000 whose account no between 103 & 107.
		UPDATE Deposit SET Amount=5000
		WHERE Actno>103 AND Actno<107
--8.	Update ADATE of ANIL to 1-4-95
		UPDATE Deposit SET ADATE = '1995-4-1'
		WHERE CNAME = 'Anil'
--9.	Update the amount of MINU to 10000.
		UPDATE Deposit SET Amount=10000
		WHERE CNAME = 'Minu'
--10.	Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96
		UPDATE Deposit SET Amount=5000,ADATE= '1996-4-1'
		WHERE CNAME = 'PRAMOD'
--Part-B: 
--1.	Give 10% Increment in Loan Amount.
		UPDATE Borrow SET Amount=Amount*1.1
--2.	Customer deposits additional 20% amount to their account, update the same.
		UPDATE DEPOSIT SET Amount=Amount*1.2
--Part-C: 
--1.	Update amount of loan no 321 to NULL.
		UPDATE BORROW SET Amount=NULL
		WHERE LOANNO = 321
--2.	Update branch name of KRANTI to NULL (Use Borrow Table)
		UPDATE BORROW SET BNAME=NULL
		WHERE CNAME = 'KRANTI'
--3.	Display the name of borrowers whose amount is NULL
		SELECT * FROM BORROW
		WHERE AMOUNT IS NULL
--4.	Display the Borrowers whose having branch.
		SELECT * FROM BORROW
		WHERE BNAME IS NOT NULL
--5.	Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481.
		UPDATE BORROW SET Amount=5000,BNAME='VRCE',CNAME='DARSHAN'
		WHERE LOANNO = 481
--6.	Update the Deposit table and set the date to 01-01-2021 for all the borrowers which amount is less than 2000.
		UPDATE DEPOSIT SET ADATE = '01-01-2021'
		WHERE AMOUNT <2000
--7.	Update the date to NULL & Branch name to �ANDHERI whose Account No is 110.
		UPDATE Deposit SET ADATE = Null ,BNAME='ANDHERI'
		WHERE Ano = 110
    
--Lab-4
--Alter Operation
--Part A:
--From the above given tables perform the following queries (ALTER Operation):
--1.	Add two more columns City VARCHAR (20) and Pincode INT.
		ALTER TABLE DEPOSIT ADD City VARCHAR(20),PINCODE INT

--2.	Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
		ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35)

--3.	Change the data type DECIMAL to INT in amount Column.
		ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT

--4.	Rename Column ActNo to ANO.
		Sp_rename 'DEPOSIT.ACTNO', 'ANO'
--5.	Delete Column City from the DEPOSIT table.
		ALTER TABLE DEPOSIT DROP COLUMN CITY
--6.	Change name of table DEPOSIT to DEPOSIT_DETAIL.
		Sp_rename 'DEPOSIT', 'DEPOSIT_DETAIL'
--Part B:
--1.	Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
		Sp_rename 'DEPOSIT_DETAIL.ADATE', 'AOPENDATE'
--2.	Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
		ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDATE
--3.	Rename Column CNAME to CustomerName.
		Sp_rename 'DEPOSIT_DETAIL.CNAME', 'CUSTOMERNAME'
--Part C:
--From the above given tables perform the following queries (ALTER Operation):
--1.	1.	Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
		ALTER TABLE Student_Detail ADD City VARCHAR(20) NOT NULL,Backlog INT NULL
--2.	Change the size of NAME column of student from VARCHAR (25) to VARCHAR (35).
		ALTER TABLE Student_Detail ALTER COLUMN Name VARCHAR(35)
--3.	Change the data type DECIMAL to INT in CPI Column.
		ALTER TABLE Student_Detail ALTER COLUMN CPI INT
--4.	Rename Column Enrollment_No to ENO.
		Sp_rename 'Student_Detail.ENROLLMENT_NO', 'ENO'
--5.	Delete Column City from the STUDENT table.
		ALTER TABLE Student_Detail DROP COLUMN CITY
--6.	Change name of table STUDENT to STUDENT_MASTER.
		Sp_rename 'Student_Detail', 'STUDENT_MASTER'

--DELETE, Truncate, Drop Operation
--Part A:
--Use Deposit_Detail table (Altered table of DEPOSIT)
--1.	Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000. 
		DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT >= 4000
--2.	Delete all the accounts CHANDI BRANCH.
		DELETE FROM DEPOSIT_DETAIL WHERE BNAME = 'CHANDI'
--3.	Delete all the accounts having account number (ANO) is greater than 105.
		DELETE FROM DEPOSIT_DETAIL WHERE ANO > 105
--4.	Delete all the records of Deposit_Detail table. (Use Truncate)
		TRUNCATE TABLE DEPOSIT_DETAIL	
--5.	Remove Deposit_Detail table. (Use Drop)
		DROP TABLE Deposit_Detail

--Part B:
--Create following table using query according to the definition.
--Insert the following records in the Employee table. 
--From the above given tables perform the following queries (DELETE Operation):
--1.	Delete all the records of Employee_MASTER table having salary greater than and equals to 14000. 
		DELETE FROM Employee_Master 
		WHERE SALARY >= 14000
--2.	Delete all the Employees who belongs to �RAJKOT� city.
		DELETE FROM Employee_Master 
		WHERE CITY = 'RAJKOT'
--3.	Delete all the Employees who joined after 1-1-2007.
		DELETE FROM Employee_Master 
		WHERE JOININGDATE > '2007-01-01'
--4.	Delete the records of Employees whose joining date is null and Name is not null.
		DELETE FROM Employee_Master 
		WHERE JOININGDATE is null And Name is not null
--5.	Delete the records of Employees whose salary is 50% of 20000.
		DELETE FROM Employee_Master 
		WHERE Salary = (20000*0.5)
--6.	Delete the records of Employees whose City Name is not empty.
		DELETE FROM Employee_Master 
		WHERE City is not null
--7.	Delete all the records of Employee_MASTER table. (Use Truncate)
		TRUNCATE TABLE EMPLOYEE_MASTER
--8.	Remove Employee_MASTER table. (Use Drop)
		DROP TABLE EMPLOYEE_MASTER

--Lab-5--Part-A:
	--1.	Display the name of students whose name starts with �k�.
			Select FirstName from Students Where FirstName Like 'K%'
	--2.	Display the name of students whose name consists of five characters.
			Select FirstName from Students Where FirstName Like '_____'
	--3.	Retrieve the first name & last name of students whose city name ends with a & contains six characters.
			Select FirstName, LastName from Students Where City Like '_____a'
	--4.	Display all the students whose last name ends with �tel�.
			Select * from Students Where LastName Like '%tel'
	--5.	Display all the students whose first name starts with �ha� & ends with�t�.
			Select * From Students Where FirstName Like 'ha%t'
	--6.	Display all the students whose first name starts with �k� and third character is �y�.
			Select * From Students Where FirstName Like 'k_y%'
	--7.	Display the name of students having no website and name consists of five characters.
			Select FirstName From Students Where Website is null And Firstname Like '_____'
	--8.	Display all the students whose last name consist of �jer�.  
			Select * From Students Where LastName Like '%jer%'
	--9.	Display all the students whose city name starts with either �r� or �b�.
			Select * From Students Where City Like 'r%' or City Like 'b%'
	--10.	Display all the name students having websites.
			Select * From Students Where Website is not null
	--11.	Display all the students whose name starts from alphabet A to H.
			Select * From Students Where FirstName Like '[A-H]%'
	--12.	Display all the students whose name�s second character is vowel.
			Select * From Students Where FirstName Like '_[AEIOU]%'
	--13.	Display the name of students having no website and name consists of minimum five characters.
			Select * From Students Where Website is null and FirstName Like '_____%'
	--14.	Display all the students whose last name starts with �Pat�.
			Select * From Students Where LastName Like 'pat%'
	--15.	Display all the students whose city name does not starts with �b�.
			Select * From Students Where City not Like 'b%'
--Part-B:
	--1.	Display all the students whose name starts from alphabet A or H.
			Select * From Students Where FirstName Like 'A%' or FirstName Like 'H%'
	--2.	Display all the students whose name�s second character is vowel and of and start with H.
			Select * From Students Where FirstName Like 'H[aeiou]%'
	--3.	Display all the students whose last name does not ends with �a�.
			Select * From Students Where LastName not Like '%a'
	--4.	Display all the students whose first name starts with consonant.
			Select * From Students Where FirstName not Like '[aeiou]%'
	--5.	Display all the students whose website contains .net
			Select * From Students Where Website  Like '%.net%'
--Part-C:
--1.	Display all the students whose address consist of -.
		SELECT * FROM Students WHERE Address LIKE '%-%'
--2.	Display all the students whose address contains single quote or double quote.
		SELECT * FROM students
		WHERE Address LIKE '%''%''%' OR Address LIKE '%"%"%';
--3.	Display all the students whose website contains @ name starts with j.
		SELECT * FROM students
		WHERE Website LIKE '%@%' AND FirstName LIKE 'J%';

--4.	Display all the names whose are either four or five characters.
		SELECT FirstName FROM students
		WHERE FIRSTNAME Like '____' or FIRSTNAME Like '_____'

		INSERT INTO Students (StuID, FirstName, LastName, Website, City, Address) VALUES
		(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'A-303 ''Vasant Kunj'', Rajkot'),
		(1022, 'Hardik', 'Shah', 'digminecraft.com', 'Ahmedabad', '"Ram Krupa", Raiya Road'),
		(1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'Raj bhavan plot, near garden'),
		(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', '"Jig''s Home", Narol'),
		(1055, 'Harmit', 'Mitel', '@me.darshan.com', 'Rajkot', 'B-55, Raj Residency'),
		(1066, 'Ashok', 'Jani', NULL, 'Baroda', 'A502, Club House Building');


		Select *From students
		Where Address Like '%|%%'Escape '|'

--Lab-6
--Date Functions
--Part-A:
--1.	Write a query to display the current date & time. Label the column Today_Date.
		Select GETDATE() AS 'TODAY_DATE'
--2.	Write a query to find new date after 365 day with reference to today.
		Select GETDATE() + 365
--3.	Display the current date in a format that appears as may 5 1994 12:00AM.
		Select CONVERT(VARCHAR, GETDATE())
--4.	Display the current date in a format that appears as 03 Jan 1995.
		Select CONVERT(VARCHAR, GETDATE(),106)
--5.	Display the current date in a format that appears as Jan 04, 96.
		Select CONVERT(VARCHAR(20), GETDATE(),7)
--6.	Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
		Select DATEDIFF(MONTH,'2008-12-31','2009-03-31')
--7.	Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
		Select DATEDIFF(YEAR,'2012-1-25','2010-9-14')
--8.	Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
		Select DATEDIFF(HOUR, '2012-01-25 07:00', '2012-01-26 10:30')
--9.	Write a query to extract Day, Month, Year from given date 12-May-16.
		Select DAY('2016/05/12'), MONTH('2016/05/12'), YEAR('2016/05/12')
--10.	Write a query that adds 5 years to current date.
		Select DATEADD(YEAR, 5, GETDATE())
--11.	Write a query to subtract 2 months from current date.
		Select DATEADD(month, -2, GETDATE())
--12.	Extract month from current date using datename () and datepart () function.
		Select DATENAME(MONTH,GETDATE())
		Select DATEPART(MONTH, GETDATE())
--13.	Write a query to find out last date of current month.
		Select EOMONTH(GETDATE())
--14.	Calculate your age in years and months.
		Select DATEDIFF(YEAR,'2005-01-01',GETDATE())
		Select DATEDIFF(MONTH,'2005-01-01',GETDATE())

--Part-B: 
--1.	Write a query to find new date after 365 day with reference to JoiningDate.
		Select DATEADD(DAY,365,JoiningDate) FROM Emp_Math
--2.	Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
		Select CONVERT(VARCHAR, JoiningDate) FROM Emp_Math
--3.	Display the JoiningDate in a format that appears as 03 Jan 1995.
		Select CONVERT(VARCHAR, JoiningDate,106) FROM Emp_Math
--4.	Display the JoiningDate in a format that appears as Jan 04, 96.
		Select CONVERT(VARCHAR, JoiningDate,7) FROM Emp_Math
--5.	Write a query to find out total number of months between JoiningDate and 31-Mar-09.
		Select DATEDIFF(MONTH,JoiningDate,'2009-03-31') FROM Emp_Math
--6.	Write a query to find out total number of years between JoiningDate and 14-Sep-10.
		Select DATEDIFF(YEAR,JoiningDate,'2010-09-14') FROM Emp_Math
--Part-C: 
--1.	Write a query to extract Day, Month, Year from JoiningDate.
		Select DAY(JoiningDate), MONTH(JOININGDATE), YEAR(JoiningDate) FROM Emp_Math
--2.	Write a query that adds 5 years to JoiningDate.
		Select DATEADD(YEAR, 5, JoiningDate) FROM Emp_Math
--3.	Write a query to subtract 2 months from JoiningDate.
		Select DATEADD(MONTH, -2, JoiningDate) FROM Emp_Math
--4.	Extract month from JoiningDate using datename () and datepart () function.
		Select DATENAME(MONTH,JoiningDate) FROM Emp_Math
		Select DATEPART(MONTH,JoiningDate) FROM Emp_Math
--5.	Calculate your age in years and months
		Select DATEDIFF(YEAR,'2005-01-01',GETDATE())
		Select DATEDIFF(MONTH,'2005-01-01',GETDATE())
--Math functions
--Part-A:
--1.	Display the result of 5 multiply by 30.
		Select 5*30
		--or
		Print 5*30
--2.	Find out the absolute value of -25, 25, -50 and 50.
		Select ABS(-25),ABS(25),ABS(-50),ABS(50)
--3.	Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
		Select Ceiling(25.2),Ceiling(25.7),Ceiling(-25.2)
--4.	Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
		Select Floor(25.2),Floor(25.7),Floor(-25.2)
--5.	Find out remainder of 5 divided 2 and 5 divided by 3.
		Select 5%2,5%3
--6.	Find out value of 3 raised to 2nd power and 4 raised 3rd power.
		Select Power(3,2),Power(4,3)
--7.	Find out the square root of 25, 30 and 50.
		Select sqrt(25),sqrt(30),sqrt(50)
--8.	Find out the square of 5, 15, and 25.
		Select square(5),square(15),square(25)
--9.	Find out the value of PI.
		Select PI()
--10.	Find out round value of 157.732 for 2, 0 and -2 decimal points.
		Select round(157.732,2),round(157.732,0),round(157.732,-2)
--11.	Find out exponential value of 2 and 3.
		Select EXP(2),EXP(3)
--12.	Find out logarithm having base e of 10 and 2.
		Select LOG(10),LOG(2)
--13.	Find out logarithm having base b having value 10 of 5 and 100.
		Select LOG10(5),LOG10(100)
--14.	Find sine, cosine and tangent of 3.1415.
		Select sin(3.1415),cos(3.1415),tan(3.1415)
--15.	Find sign of -25, 0 and 25.
		Select SIGN(-25),SIGN(0),SIGN(25)
--16.	Generate random number using function.
		Select RAND()
		
--Part-B:
--1.	Display the result of Salary plus Commission.
		Select Salary+Commission From Emp_Math
--2.	Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
		Select Ceiling(55.2),Ceiling(35.7),Ceiling(-55.2)
--3.	Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
		Select Floor(55.2),Floor(35.7),Floor(-55.2)
--4.	Find out remainder of 55 divided 2 and 55 divided by 3.
		Select 55%2,55%3
--5.	Find out value of 23 raised to 2nd power and 14 raised 3rd power.
		Select Power(23,2),Power(14,3)
--Part-C:
--1.	Find out the square root of 36, 49 and 81.
		Select sqrt(36),sqrt(49),sqrt(81)
--2.	Find out the square of 3, 9, and 12.
		Select square(3),square(9),square(12)
--3.	Find out round value of 280.8952 for 2, 0 and -2 decimal points.
		Select round(280.8952,2),round(280.8952,0),round(280.8952,-2)
--4.	Find sine, cosine and tangent of 4.2014.
		Select sin(3.1415),cos(3.1415),tan(3.1415)
--5.	Find sign of -55, 0 and 95.
		Select SIGN(-55),SIGN(0),SIGN(95)
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

--lab-7
--Part-A:
--1.	Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
		SELECT MIN(SALARY) AS 'MINIMUM',MAX(SALARY) AS 'MAXIMUM' FROM EMP
--2.	Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
		SELECT AVG(SALARY) As Avg_Sal,SUM (SALARY) As Total_Sal FROM EMP
--3.	Find total number of employees of EMPLOYEE table.
		SELECT COUNT(*) As TotalEmp FROM EMP
--4.	Find highest salary from Rajkot city.
		SELECT MAX(SALARY) FROM EMP
		WHERE CITY = 'RAJKOT'
--5.	Give maximum salary from IT department.
		SELECT MAX(SALARY) FROM EMP
		WHERE DEPARTMENT = 'IT'
--6.	Count employee whose joining date is after 8-feb-91.
		SELECT COUNT(*) FROM EMP
		WHERE JOININGDATE > '1991-02-08'
--7.	Display average salary of Admin department.
		SELECT AVG(SALARY) FROM EMP
		WHERE DEPARTMENT = 'ADMIN'
--8.	Display total salary of HR department.
		SELECT SUM(SALARY) FROM EMP
		WHERE DEPARTMENT = 'HR'
--9.	Count total number of cities of employee without duplication.
		SELECT COUNT (DISTINCT CITY)
		FROM EMP

--10.	Count unique departments.
		SELECT COUNT (DISTINCT DEPARTMENT)
		FROM EMP
--11.	Give minimum salary of employee who belongs to Ahmedabad.
		SELECT MIN(SALARY) FROM EMP 
		WHERE CITY = 'AHMEDABAD'
--12.	Find city wise highest salary.
		SELECT CITY, MAX(SALARY) As MAXIMUM
		FROM EMP
		GROUP BY CITY

--13.	Find department wise lowest salary.
		SELECT DEPARTMENT, MIN(SALARY) As MINIMUM
		FROM EMP
		GROUP BY DEPARTMENT
--14.	Display city with the total number of employees belonging to each city.
		SELECT CITY, COUNT(*)
		FROM EMP
		GROUP BY CITY
--15.	Give total salary of each department of EMP table.
		SELECT DEPARTMENT, SUM(SALARY)
		FROM EMP
		GROUP BY DEPARTMENT
--16.	Give average salary of each department of EMP table without displaying the respective department name.
		SELECT AVG(SALARY)
		FROM EMP
		GROUP BY DEPARTMENT
--Part-B:
--1.	Count the number of employees living in Rajkot.
		SELECT COUNT(*)
		FROM EMP
		WHERE CITY = 'RAJKOT'
--2.	Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
		SELECT MAX(SALARY)-MIN(SALARY) AS 'DIFFERENCE' FROM EMP
--3.	Display the total number of employees hired before 1st January, 1991.
		SELECT COUNT(*)
		FROM EMP
		WHERE JOININGDATE < '01-01-1991'
--Part-C:
--1.	Count the number of employees living in Rajkot or Baroda.
		SELECT COUNT(*)
		FROM EMP
		WHERE CITY = 'RAJKOT' OR CITY = 'BARODA'
--2.	Display the total number of employees hired before 1st January, 1991 in IT department.
		SELECT COUNT(*)
		FROM EMP
		WHERE JOININGDATE < '01-01-1991'
		AND DEPARTMENT = 'IT'
--3.	Find the Joining Date wise Total Salaries.
		SELECT JoiningDate, SUM(Salary)
		FROM Emp
		GROUP BY JoiningDate
--4.	Find the Maximum salary department & city wise in which city name starts with �R�.
		SELECT Department, City, MAX(Salary)
		FROM Emp
		WHERE City LIKE 'R%'
		GROUP BY Department, City
--5.	Find out city wise duplicate names.
		SELECT City, EName FROM Emp
		GROUP BY City, EName
		HAVING COUNT(*) > 1
--6.	Find out department wise highest paid employee name.
		SELECT ENAME,DEPARTMENT From EMP
		WHERE SALARY IN (SELECT MAX(SALARY) FROM EMP Group by Department )
		Group by DEPARTMENT,ENAME

--lab-8
--Part-A:
--1.	Display Total Sales Amount by Region.
		Select Sum(Sales_Amount),Region From Sales 
		Group by Region
--2.	Display Average Sales Amount by Product
		Select AVG(Sales_Amount),Product From Sales 
		Group by Product
--3.	Display Maximum Sales Amount by Year
		Select Max(Sales_Amount),Year From Sales 
		Group by Year
--4.	Display Minimum Sales Amount by Region and Year
		Select Min(Sales_Amount),Region,Year From Sales 
		Group by Region,Year
--5.	Count of Products Sold by Region
		Select Count(*),Region From Sales 
		Group by Region
--6.	Display Sales Amount by Year and Product
		Select Sum(Sales_Amount),Product,Year From Sales 
		Group by Product,Year
--7.	Display Regions with Total Sales Greater Than 5000
		SELECT Region, SUM(Sales_Amount) FROM Sales
		GROUP BY Region
		HAVING SUM(Sales_Amount) > 5000

--8.	Display Products with Average Sales Less Than 10000
		SELECT Product, AVG(Sales_Amount)FROM Sales
		GROUP BY Product
		HAVING AVG(Sales_Amount) < 10000

--9.	Display Years with Maximum Sales Exceeding 500
		SELECT Year FROM Sales
		GROUP BY Year
		HAVING MAX(Sales_Amount) > 500

--10.	Display Regions with at Least 3 Distinct Products Sold.
		SELECT Region FROM Sales
		GROUP BY Region
		HAVING COUNT(DISTINCT Product) >= 3

--11.	Display Years with Minimum Sales Less Than 1000
		SELECT Year FROM Sales
		GROUP BY Year
		HAVING MIN(Sales_Amount) < 1000

--12.	Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
		SELECT Region, SUM(Sales_Amount)FROM Sales
		WHERE Year = 2023
		GROUP BY Region
		ORDER BY SUM(Sales_Amount) DESC

--Part-B:
--1.	Display Count of Orders by Year and Region, Sorted by Year and Region
		SELECT Year, Region, COUNT(*)FROM Sales
		GROUP BY Year, Region
		ORDER BY Year, Region

--2.	Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
		SELECT Region FROM Sales
		GROUP BY Region, Year
		HAVING MAX(Sales_Amount) > 1000
		ORDER BY Region

--3.	Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
		SELECT Year, SUM(Sales_Amount)FROM Sales
		GROUP BY Year
		HAVING SUM(Sales_Amount) < 1000
		ORDER BY Year DESC

--4.	Display Top 3 Regions by Total Sales Amount in Year 2024
		SELECT TOP 3 Region, SUM(Sales_Amount) FROM Sales
		WHERE Year = 2024
		GROUP BY Region
		ORDER BY SUM(Sales_Amount) DESC

--Part-C:
--1.	Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
		SELECT Product, AVG(Sales_Amount)FROM Sales
		GROUP BY Product
		HAVING AVG(Sales_Amount) BETWEEN 1000 AND 2000
		ORDER BY Product

--2.	Display Years with More Than 5 Orders from Each Region
		SELECT Year FROM Sales
		GROUP BY Year, Region
		HAVING COUNT(*) > 5
		ORDER BY Year

--3.	Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
		SELECT Region, AVG(Sales_Amount)FROM Sales
		WHERE Year = 2023
		GROUP BY Region
		HAVING AVG(Sales_Amount) > 1500
		ORDER BY  AVG(Sales_Amount) DESC

--lab-9
--Part-A:
--1.	Display details of students who are from computer department.
		SELECT *FROM Stu_Detail
		WHERE DID in (SELECT DID FROM Department WHERE DName = 'Computer')

--2.	Displays name of students whose SPI is more than 8.
		SELECT Name FROM Stu_Detail
		WHERE Rno IN (SELECT Rno FROM Academic WHERE SPI > 8)
--3.	Display details of students of computer department who belongs to Rajkot city.
		SELECT *FROM Stu_Detail
		WHERE DID in (SELECT DID FROM Department WHERE DName = 'Computer')
		AND City = 'RAJKOT'
--4.	Find total number of students of electrical department.
		SELECT COUNT(*)FROM Stu_Detail
		WHERE DID in (SELECT DID FROM Department WHERE DName = 'ELECTRICAL')
--5.	Display name of student who is having maximum SPI.
		SELECT Name FROM Stu_Detail
		WHERE Rno IN (SELECT Rno FROM Academic WHERE SPI = (SELECT MAX(SPI) FROM Academic))

--6.	Display details of students having more than 1 backlog.
		SELECT *FROM Stu_Detail
		WHERE Rno IN (SELECT Rno FROM Academic WHERE Bklog >1)
		
--Part-B:
--1.	Display name of students who are either from computer department or from mechanical department.
		SELECT *FROM Stu_Detail
		WHERE DID in (SELECT DID FROM Department WHERE DName = 'Computer' or DName = 'MECHANICAL' )
--2.	Display name of students who are in same department as 102 studying in.
		SELECT *FROM Stu_Detail
		WHERE DID in (SELECT DID FROM Stu_Detail WHERE Rno = 102)
--Part-C:
--1.	Display name of students whose SPI is more than 9 and who is from electrical department.
		SELECT *FROM Stu_Detail
		WHERE DID in (SELECT DID FROM Department WHERE DName = 'ELECTRICAL')
		AND Rno IN (SELECT Rno FROM Academic WHERE SPI >9)
--2.	Display name of student who is having second highest SPI.
		SELECT Name FROM Stu_Detail
		WHERE Rno = (SELECT Rno FROM Academic
					WHERE SPI = (SELECT MAX(SPI) FROM Academic
					WHERE SPI < (SELECT MAX(SPI) FROM Academic)
								))

--3.	Display city names whose students branch wise SPI is 9.2.
		SELECT  City FROM Stu_Detail
		WHERE Rno IN (SELECT Rno FROM Academic WHERE SPI = 9.2)
		GROUP BY DID,City
--Part-A:
--1.	Display name of students who is either in Computer or in Electrical.
		SELECT Name FROM Computer
		UNION
		SELECT Name FROM Electrical

--2.	Display name of students who is either in Computer or in Electrical including duplicate data.
		SELECT Name FROM Computer
		UNION ALL
		SELECT Name FROM Electrical
--3.	Display name of students who is in both Computer and Electrical.
		SELECT Name FROM Computer
		INTERSECT
		SELECT Name FROM Electrical
--4.	Display name of students who are in Computer but not in Electrical.
		SELECT Name FROM Computer
		EXCEPT
		SELECT Name FROM Electrical
--5.	Display name of students who are in Electrical but not in Computer.
		SELECT Name FROM Electrical
		EXCEPT
		SELECT Name FROM Computer
--6.	Display all the details of students who are either in Computer or in Electrical.
		SELECT * FROM Computer
		UNION
		SELECT* FROM Electrical

--7.	Display all the details of students who are in both Computer and Electrical.
		SELECT * FROM Computer
		INTERSECT
		SELECT* FROM Electrical
--Part-B:
--1.	Display name of persons who is either Employee or Customer.
		SELECT Name FROM Emp_DATA
		UNION
		SELECT Name FROM Customer
--2.	Display name of persons who is either Employee or Customer including duplicate data.
		SELECT Name FROM Emp_DATA
		UNION ALL
		SELECT Name FROM Customer
--3.	Display name of persons who is both Employee as well as Customer.
		SELECT Name FROM Emp_DATA
		INTERSECT
		SELECT Name FROM Customer
--4.	Display name of persons who are Employee but not Customer.
		SELECT Name FROM Emp_DATA
		EXCEPT
		SELECT Name FROM Customer
--5.	Display name of persons who are Customer but not Employee.
		SELECT Name FROM Customer
		EXCEPT
		SELECT Name FROM Emp_DATA
--Part-C: 
--1.	Perform all the queries of Part-B but display ID and Name columns instead of Name only.
--1. 
		SELECT *FROM Emp_DATA
		UNION
		SELECT *FROM Customer
--2. 
		SELECT *FROM Emp_DATA
		UNION ALL
		SELECT *FROM Customer
--3. 
		SELECT *FROM Emp_DATA
		INTERSECT
		SELECT *FROM Customer
--4. 
		SELECT *FROM Emp_DATA
		EXCEPT
		SELECT *FROM Customer
--5. 
		SELECT *FROM Customer
		EXCEPT
		SELECT *FROM Emp_DATA

--Lab-10
--Part A:
--1.	Create a view Personal with all columns.
		CREATE VIEW Personal AS SELECT *FROM Student_INFO
--2.	Create a view Student_Details having columns Name, Branch & SPI.
		CREATE VIEW Student_Details AS SELECT Name, Branch, SPI FROM Student_INFO
--3.	Create a view AcademicData having columns RNo, Name, Branch.
		CREATE VIEW AcademicData AS SELECT Name, Branch, RNo FROM Student_INFO
--4.	Create a view Student_ bklog having all columns but students whose bklog more than 2.
		CREATE VIEW Student_bklog AS SELECT *FROM Student_INFO WHERE Bklog > 2
--5.	Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters.
		CREATE VIEW Student_Pattern AS SELECT RNo, Name, Branch FROM Student_INFO
		WHERE LEN(Name) = 4

--6.	Insert a new record to AcademicData view. (107, Meet, ME)
		INSERT INTO AcademicData(RNo, Name, Branch) VALUES (107, 'Meet', 'ME');

--7.	Update the branch of Amit from CE to ME in Student_Details view.
		UPDATE Student_Details
		SET Branch = 'ME'
		WHERE Name = 'Amit'

--8.	Delete a student whose roll number is 104 from AcademicData view.
		DELETE FROM AcademicData
		WHERE RNo = 104

--Part-B:
--1.	Create a view that displays information of all students whose spi is above 8.5.
		CREATE VIEW High_SPI_Students AS SELECT * FROM Student_INFO
		WHERE SPI > 8.5

--2.	Create a view that displays 0 backlog students.
		CREATE VIEW Zero_Backlog_Students AS SELECT *FROM Student_INFO
		WHERE Bklog = 0
--3.	Create a view Computerview that displays CE branch data only.
		CREATE VIEW Computerview AS SELECT *FROM Student_INFO
		WHERE Branch = 'CE'
--Part - C
--1.	Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
		CREATE VIEW Result_EC AS SELECT Name, SPI FROM Student_INFO
		WHERE Branch = 'EC' AND SPI < 5

--2.	Update the result of student MAHESH to 4.90 in Result_EC view.
		UPDATE Result_EC
		SET SPI = 4.90
		WHERE Name = 'Mahesh'

--3.	Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with �M� and having bklogs more than 5.
		CREATE VIEW Stu_Bklog AS SELECT RNo, Name, Bklog FROM Student_INFO
		WHERE Name LIKE 'M%' AND Bklog > 5
--4.	Drop Computerview form the database.
		DROP VIEW Computerview

--lab-11
--Part-A:
--1.	Combine information from student and result table using cross join or Cartesian product.
		SELECT Stu_Info.Rno, Stu_Info.Name, Stu_Info.Branch, Result.SPI
		FROM Stu_Info
		CROSS JOIN Result
--2.	Perform inner join on Student and Result tables.
		SELECT Stu_Info.Rno, Stu_Info.Name, Stu_Info.Branch, Result.SPI
		FROM Stu_Info
		INNER JOIN Result ON Stu_Info.Rno = Result.Rno

--3.	Perform the left outer join on Student and Result tables.
		SELECT Stu_Info.Rno, Stu_Info.Name, Stu_Info.Branch, Result.SPI
		FROM Stu_Info
		LEFT OUTER JOIN Result ON Stu_Info.Rno = Result.Rno
--4.	Perform the right outer join on Student and Result tables.
		SELECT Stu_Info.Rno, Stu_Info.Name, Stu_Info.Branch, Result.SPI
		FROM Stu_Info
		RIGHT OUTER JOIN Result ON Stu_Info.Rno = Result.Rno
--5.	Perform the full outer join on Student and Result tables.
		SELECT Stu_Info.Rno, Stu_Info.Name, Stu_Info.Branch, Result.SPI
		FROM Stu_Info
		FULL OUTER JOIN Result ON Stu_Info.Rno = Result.Rno
--6.	Display Rno, Name, Branch and SPI of all students.
		SELECT Stu_Info.Rno, Stu_Info.Name, Stu_Info.Branch, Result.SPI
		FROM Stu_Info
		LEFT JOIN Result ON Stu_Info.Rno = Result.Rno
--7.	Display Rno, Name, Branch and SPI of CE branch�s student only.
		SELECT Stu_Info.Rno, Stu_Info.Name, Stu_Info.Branch, Result.SPI
		FROM Stu_Info
		LEFT OUTER JOIN Result ON Stu_Info.Rno = Result.Rno
		WHERE BRANCH = 'CE'
--8.	Display Rno, Name, Branch and SPI of other than EC branch�s student only.
		SELECT Stu_Info.Rno, Stu_Info.Name, Stu_Info.Branch, Result.SPI
		FROM Stu_Info
		LEFT OUTER JOIN Result ON Stu_Info.Rno = Result.Rno
		WHERE BRANCH <> 'EC'
--9.	Display average result of each branch.
		SELECT Stu_Info.Branch, AVG(Result.SPI)
		FROM Stu_Info
		INNER JOIN Result ON Stu_Info.Rno = Result.Rno
		GROUP BY Branch

--10.	Display average result of CE and ME branch.
		SELECT Stu_Info.Branch, AVG(Result.SPI)
		FROM Stu_Info
		INNER JOIN Result ON Stu_Info.Rno = Result.Rno
		WHERE Branch IN ('CE','ME')
		GROUP BY Branch
		
--Part-B:
--1.	Display average result of each branch and sort them in ascending order by SPI.
		SELECT Stu_Info.Branch, AVG(Result.SPI)
		FROM Stu_Info
		INNER JOIN Result ON Stu_Info.Rno = Result.Rno
		GROUP BY Branch
		ORDER BY AVG(SPI)
--2.	Display highest SPI from each branch and sort them in descending order.
		SELECT Stu_Info.Branch, MAX(Result.SPI)
		FROM Stu_Info
		INNER JOIN Result ON Stu_Info.Rno = Result.Rno
		GROUP BY Branch
		ORDER BY MAX(SPI)
--Part-C:
--1.	Retrieve the names of employee along with their manager�s name from the Employee table
		SELECT a.Name,b.Name
		FROM Employee_Data a
		JOIN Employee_Data b ON a.EmployeeNo = b.ManagerNo
--Lab-12
--Part � A
--1.	Find all persons with their department name & code.
		SELECT p.PersonName, d.DepartmentName, d.DepartmentCode
		FROM Person p
		JOIN Dept d ON p.DepartmentID = d.DepartmentID
--2.	Find the person's name whose department is in C-Block.
		SELECT p.PersonName
		FROM Person p
		JOIN Dept d ON p.DepartmentID = d.DepartmentID
		WHERE Location = 'C-Block'
--3.	Retrieve person name, salary & department name who belongs to Jamnagar city.
		SELECT p.PersonName, p.Salary, d.DepartmentName
		FROM Person p
		JOIN Dept d ON p.DepartmentID = d.DepartmentID
		WHERE p.City = 'Jamnagar'
--4.	Retrieve person name, salary & department name who does not belong to Rajkot city.
		SELECT p.PersonName, p.Salary, d.DepartmentName
		FROM Person p
		JOIN Dept d ON p.DepartmentID = d.DepartmentID
		WHERE p.City <> 'RAJKOT'
--5.	Retrieve person�s name of the person who joined the Civil department after 1-Aug-2001.
		SELECT p.PersonName
		FROM Person p
		JOIN Dept d ON p.DepartmentID = d.DepartmentID
		WHERE d.DepartmentName = 'Civil' AND p.JoiningDate > '2001-08-01'

--6.	Find details of all persons who belong to the computer department.
		SELECT p.*FROM Person p
		JOIN Dept d ON p.DepartmentID = d.DepartmentID
		WHERE d.DepartmentName = 'Computer'

--7.	Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
		SELECT p.PersonName, d.DepartmentName
		FROM Person p
		JOIN Dept d ON p.DepartmentID = d.DepartmentID
		WHERE DATEDIFF(DAY,JoiningDate,GETDATE()) > 365

--8.	Find department wise person counts.
		SELECT d.DepartmentName, COUNT(p.PersonID)
		FROM Dept d
		LEFT JOIN Person p ON d.DepartmentID = p.DepartmentID
		GROUP BY d.DepartmentName

--9.	Give department wise maximum & minimum salary with department name.
		SELECT d.DepartmentName, MIN(p.Salary),MAX(p.Salary)
		FROM Dept d
		LEFT JOIN Person p ON d.DepartmentID = p.DepartmentID
		GROUP BY d.DepartmentName
--10.	Find city wise total, average, maximum and minimum salary.
		SELECT CITY,SUM(Salary),AVG(Salary),MIN(Salary),MAX(Salary)
		FROM Person 
		GROUP  BY City
--11.	Find the average salary of a person who belongs to Ahmedabad city.
		SELECT CITY,AVG(Salary)
		FROM Person 
		WHERE CITY ='AHMEDABAD'
		GROUP  BY City
--12.	Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)
		SELECT CONCAT(p.PersonName, ' lives in ', p.City, ' and works in ', d.DepartmentName, ' Department.')
		FROM Person p
		JOIN Dept d ON p.DepartmentID = d.DepartmentID

--Part � B
--1.	Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In single column)
		SELECT CONCAT(p.PersonName, ' earns ', p.Salary, ' from ', d.DepartmentName, ' department monthly.')
		FROM Person p
		JOIN Dept d ON p.DepartmentID = d.DepartmentID

--2.	Find city & department wise total, average & maximum salaries.
		SELECT p.City, d.DepartmentName, SUM(p.Salary),AVG(p.Salary),MAX(p.Salary) 
		FROM Person p
		JOIN Dept d ON p.DepartmentID = d.DepartmentID
		GROUP BY p.City, d.DepartmentName

--3.	Find all persons who do not belong to any department.
		SELECT PersonName
		FROM Person 
		WHERE DepartmentID IS NULL

--4.	Find all departments whose total salary is exceeding 100000.
		SELECT d.DepartmentName
		FROM Dept d
		JOIN Person p ON d.DepartmentID = p.DepartmentID
		GROUP BY d.DepartmentName
		HAVING SUM(p.Salary) > 100000

--Part � C
--1.	List all departments who have no person.
		SELECT d.DepartmentName
		FROM Dept d
		LEFT JOIN Person p ON d.DepartmentID = p.DepartmentID
		WHERE p.PersonID IS NULL

--2.	List out department names in which more than two persons are working.
		SELECT d.DepartmentName
		FROM Dept d
		JOIN Person p ON d.DepartmentID = p.DepartmentID
		GROUP BY d.DepartmentName
		HAVING COUNT(p.PersonID) > 2

--3.	Give a 10% increment in the computer department employee�s salary. (Use Update)
		UPDATE Person
		SET Salary = Salary * 1.1
		WHERE DepartmentID IN (SELECT DepartmentID FROM Dept WHERE DepartmentName = 'Computer')

--Lab-13
--PART-A:
--1.	Display all the villages of Rajkot city. 
		SELECT v.Name
		FROM Village v
		JOIN City c ON v.CityID = c.CityID
		WHERE c.Name = 'Rajkot'
--2.	Display city along with their villages & pin code.
		SELECT v.Name,c.Name,c.Pincode
		FROM Village v
		JOIN City c ON v.CityID = c.CityID
--3.	Display the city having more than one village.
		SELECT c.Name
		FROM Village v
		JOIN City c ON v.CityID = c.CityID
		GROUP BY c.Name
		Having Count(v.VID) >1
--4.	Display the city having no village.
		SELECT c.Name
		FROM City c
		LEFT JOIN Village v ON c.CityID = v.CityID
		WHERE v.VID IS NULL

--5.	Count the total number of villages in each city.
		SELECT c.Name AS City, COUNT(v.VID)
		FROM City c
		LEFT JOIN Village v ON c.CityID = v.CityID
		GROUP BY c.Name

--6.	Count the number of cities having more than one village.
		SELECT COUNT(c.Name),c.Name
		FROM City c
		JOIN Village v ON c.CityID = v.CityID
		GROUP BY c.Name
		HAVING COUNT(v.VID) > 1



--1.	Do not allow SPI more than 10
--2.	Do not allow Bklog less than 0.
--3.	Enter the default value as �General� in branch to all new records IF no other value is specified.
CREATE TABLE STU_MASTER_(
	RNO INT PRIMARY KEY,
	NAME VARCHAR(50),
	BRANCH VARCHAR(50) DEFAULT 'GENERAL',
	SPI DECIMAL(3,2) CHECK (SPI<=10),
	BKLOG INT CHECK (BKLOG >=0)
)
--4.	Try to update SPI of Raju from 8.80 to 12.
Update Stu_Master 
Set Spi = 12
Where Name = 'Raju'
--5.	Try to update Bklog of Neha from 0 to -1.
Update Stu_Master 
Set Bklog = -1
Where Name = 'Neha'
--Part-B: Create table as per following schema with proper validation and try to insert data which violate your validation.
--1.	Emp(Eid, Ename, Did, Cid, Salary, Experience)
--		Dept(Did, Dname)
--		City(Cid, Cname)
INSERT INTO Emp VALUES (1, 'Mann', 1, 101, -10000, 3)
INSERT INTO Emp VALUES (2, 'Mavani', 1, 101, 60000, -1)

--Part-C: Create table as per following schema with proper validation and try to insert data which violate your validation.
--1.	Emp(Eid, Ename, Did, Cid, Salary, Experience)
--		Dept(Did, Dname)
--      City(Cid, Cname, Did))
--		District(Did, Dname, Sid)
--		State(Sid, Sname, Cid)
--		Country(Cid, Cname)
--2.	Insert 5 records in each table.
		
		INSERT INTO Country VALUES 
		(1, 'USA'),
		(2, 'Canada'), 
		(3, 'UK'), 
		(4, 'Australia'), 
		(5, 'Germany');

		INSERT INTO State VALUES 
		(101, 'New York', 1), 
		(102, 'California', 1), 
		(103, 'Ontario', 2), 
		(104, 'London', 3), 
		(105, 'Victoria', 4);

		INSERT INTO District VALUES 
		(1001, 'Manhattan', 101), 
		(1002, 'San Francisco', 102), 
		(1003, 'Toronto', 103), 
		(1004, 'Camden', 104), 
		(1005, 'Melbourne', 105);

		INSERT INTO City VALUES 
		(201, 'New York City', 1001), 
		(202, 'San Francisco City', 1002), 
		(203, 'Toronto City', 1003), 
		(204, 'London City', 1004), 
		(205, 'Melbourne City', 1005);

		INSERT INTO Dept VALUES 
		(301, 'HR'),
		(302, 'Engineering'),
		(303, 'Marketing'),
		(304, 'Finance'),
		(305, 'IT');

		INSERT INTO Emp  VALUES 
		(10001, 'John Doe', 301, 201, 60000.00, 5), 
		(10002, 'Jane Smith', 302, 202, 70000.00, 7), 
		(10003, 'Mike Johnson', 303, 203, 55000.00, 4), 
		(10004, 'Emily Brown', 304, 204, 65000.00, 6), 
		(10005, 'Chris Lee', 305, 205, 75000.00, 8);

--3.	Display employeename, departmentname, Salary, Experience, City, District, State and country of all employees.
		SELECT 
			E.Ename, 
			D.Dname, 
			E.Salary, 
			E.Experience, 
			C.Cname, 
			Di.Dname, 
			S.Sname, 
			Co.Cname
		FROM 
			Emp E
		JOIN 
			Dept D ON E.Did = D.Did
		JOIN 
			City C ON E.Cid = C.Cid
		JOIN 
			District Di ON C.Did = Di.Did
		JOIN 
			State S ON Di.Sid = S.Sid
		JOIN 
			Country Co ON S.Cid = Co.Cid;



		



