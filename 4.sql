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
--2.	Delete all the Employees who belongs to ‘RAJKOT’ city.
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

