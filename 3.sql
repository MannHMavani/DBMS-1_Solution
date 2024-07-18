--Select into Operation
--Part-A: 
--Create table as per following.
	--1.	Create table Worldcup from cricket with all the columns and data. 
		SELECT * INTO WorldCup FROM Cricket
	--2.	Create table T20 from cricket with first two columns with no data.
		SELECT Name, City INTO T20 FROM Cricket		WHERE 1=2
	--3.	Create table IPL From Cricket with No Data
		SELECT * INTO IPL FROM Cricket
		Where 1=5
--Part-B: 
	--1.	Create table Employee_detail from Employee with all the columns and data. 
		SELECT * INTO Employee_detail FROM Employee
	--2.	Create table Employee_data from Employee with first two columns with no data.
		SELECT Name, City INTO Employee_data FROM Employee		WHERE 1=6
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
--7.	Update the date to NULL & Branch name to ‘ANDHERI whose Account No is 110.
		UPDATE Deposit SET ADATE = Null ,BNAME='ANDHERI'
		WHERE Ano = 110




