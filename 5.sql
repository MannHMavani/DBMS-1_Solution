--Part-A:
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


		Select *From students
		Where City Like 'r%' collate SQL_Latin1_General_Cp1_CS_AS

		INSERT INTO Students (StuID, FirstName, LastName, Website, City, Address) VALUES
		(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'A-303 ''Vasant Kunj'', Rajkot'),
		(1022, 'Hardik', 'Shah', 'digminecraft.com', 'Ahmedabad', '"Ram Krupa", Raiya Road'),
		(1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'Raj bhavan plot, near garden'),
		(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', '"Jig''s Home", Narol'),
		(1055, 'Harmit', 'Mitel', '@me.darshan.com', 'Rajkot', 'B-55, Raj Residency'),
		(1066, 'Ashok', 'Jani', NULL, 'Baroda', 'A502, Club House Building');


		Select *From students
		Where Address Like '%/%%'Escape '/'