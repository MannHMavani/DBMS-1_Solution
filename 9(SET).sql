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