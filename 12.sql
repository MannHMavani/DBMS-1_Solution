--Part – A
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
--5.	Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
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

--Part – B
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

--Part – C
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

--3.	Give a 10% increment in the computer department employee’s salary. (Use Update)
		UPDATE Person
		SET Salary = Salary * 1.1
		WHERE DepartmentID IN (SELECT DepartmentID FROM Dept WHERE DepartmentName = 'Computer')
