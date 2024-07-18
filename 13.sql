--1.	Do not allow SPI more than 10
--2.	Do not allow Bklog less than 0.
--3.	Enter the default value as ‘General’ in branch to all new records IF no other value is specified.
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


