--PART-A:
--1.	Display all the villages of Rajkot city. 
		SELECT v.Name
		FROM Village v
		JOIN City c ON v.CityID = c.CityID
		WHERE c.Name = 'Rajkot'
--2.	Display city along with their villages & pin code.
		SELECT v.Name,c.Name,c.Pincode
		FROM Village v
		JOIN City c ON v.CityID = c.CityID
--3.	Display the city having more than one village.
		SELECT c.Name
		FROM Village v
		JOIN City c ON v.CityID = c.CityID
		GROUP BY c.Name
		Having Count(v.VID) >1
--4.	Display the city having no village.
		SELECT c.Name
		FROM City c
		LEFT JOIN Village v ON c.CityID = v.CityID
		WHERE v.VID IS NULL

--5.	Count the total number of villages in each city.
		SELECT c.Name AS City, COUNT(v.VID)
		FROM City c
		LEFT JOIN Village v ON c.CityID = v.CityID
		GROUP BY c.Name

--6.	Count the number of cities having more than one village.
		SELECT COUNT(c.Name),c.Name
		FROM City c
		JOIN Village v ON c.CityID = v.CityID
		GROUP BY c.Name
		HAVING COUNT(v.VID) > 1


