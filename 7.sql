CREATE TABLE EMP (
    EMP_EID INT PRIMARY KEY,
    EName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoiningDate DATE,
    City VARCHAR(50)
);

INSERT INTO EMP (EMP_EID, EName, Department, Salary, JoiningDate, City) VALUES
(101, 'Rahul', 'Admin', 56000, '1990-01-01', 'Rajkot'),
(102, 'Hardik', 'IT', 18000, '1990-09-25', 'Ahmedabad'),
(103, 'Bhavin', 'HR', 25000, '1991-05-14', 'Baroda'),
(104, 'Bhoomi', 'Admin', 39000, '1991-02-08', 'Rajkot'),
(105, 'Rohit', 'IT', 17000, '1990-07-23', 'Jamnagar'),
(106, 'Priya', 'IT', 9000, '1990-10-18', 'Ahmedabad'),
(107, 'Bhoomi', 'HR', 34000, '1991-12-25', 'Rajkot');

--Part-A:

--1.	Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
		SELECT MIN(SALARY) AS 'MINIMUM',MAX(SALARY) AS 'MAXIMUM' FROM EMP
--2.	Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
		SELECT AVG(SALARY) As Avg_Sal,SUM(SALARY) As Total_Sal FROM EMP
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

--------EXTRA----------------
--1.	Find the employee with the highest salary in each department.	
		SELECT Department,EName,MAX(Salary) FROM Emp
		Where Salary in (Select MAX(Salary) FROM Emp GROUP BY Department)
		GROUP BY Department,EName

		INSERT INTO EMP (EMP_EID, EName, Department, Salary, JoiningDate, City) VALUES
(2, 'Rahul2', 'HR', 18000, '1990-01-01', 'Rajkot')

Delete From EMP where EMP_EID =1
--2.	Calculate the average salary for each city.
		SELECT City,AVG(Salary)  
		FROM Emp 
		GROUP BY City;

--3.	Find the second highest salary in the entire company.
		SELECT MAX(Salary) AS Second_Highest_Salary 
		FROM Emp 
		WHERE Salary < (SELECT MAX(Salary) FROM Emp);

--4.	Find employees who joined in the first half of any year.
		SELECT * FROM Emp 
		WHERE MONTH(JoiningDate) BETWEEN 1 AND 6;

--5.	Display the name and salary of the employee who joined last.
		SELECT Top 1 EName,Salary 
		FROM Emp 
		ORDER BY JoiningDate DESC


