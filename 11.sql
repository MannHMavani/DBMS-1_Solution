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
--7.	Display Rno, Name, Branch and SPI of CE branch’s student only.
		SELECT Stu_Info.Rno, Stu_Info.Name, Stu_Info.Branch, Result.SPI
		FROM Stu_Info
		LEFT OUTER JOIN Result ON Stu_Info.Rno = Result.Rno
		WHERE BRANCH = 'CE'
--8.	Display Rno, Name, Branch and SPI of other than EC branch’s student only.
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
--1.	Retrieve the names of employee along with their manager’s name from the Employee table
		SELECT a.Name,b.Name
		FROM Employee_Data a
		JOIN Employee_Data b ON a.EmployeeNo = b.ManagerNo
