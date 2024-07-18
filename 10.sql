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
--Part – C
--1.	Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
		CREATE VIEW Result_EC AS SELECT Name, SPI FROM Student_INFO
		WHERE Branch = 'EC' AND SPI < 5

--2.	Update the result of student MAHESH to 4.90 in Result_EC view.
		UPDATE Result_EC
		SET SPI = 4.90
		WHERE Name = 'Mahesh'

--3.	Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more than 5.
		CREATE VIEW Stu_Bklog AS SELECT RNo, Name, Bklog FROM Student_INFO
		WHERE Name LIKE 'M%' AND Bklog > 5

--4.	Drop Computerview form the database.
		DROP VIEW Computerview
