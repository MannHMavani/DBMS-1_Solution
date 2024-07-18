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
