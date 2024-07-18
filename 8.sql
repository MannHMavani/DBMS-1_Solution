--Part-A:
--1.	Display Total Sales Amount by Region.
		Select Sum(Sales_Amount),Region From Sales 
		Group by Region
--2.	Display Average Sales Amount by Product
		Select AVG(Sales_Amount),Product From Sales 
		Group by Product
--3.	Display Maximum Sales Amount by Year
		Select Max(Sales_Amount),Year From Sales 
		Group by Year
--4.	Display Minimum Sales Amount by Region and Year
		Select Min(Sales_Amount),Region,Year From Sales 
		Group by Region,Year
--5.	Count of Products Sold by Region
		Select Count(*),Region From Sales 
		Group by Region
--6.	Display Sales Amount by Year and Product
		Select Sum(Sales_Amount),Product,Year From Sales 
		Group by Product,Year
--7.	Display Regions with Total Sales Greater Than 5000
		SELECT Region, SUM(Sales_Amount) FROM Sales
		GROUP BY Region
		HAVING SUM(Sales_Amount) > 5000

--8.	Display Products with Average Sales Less Than 10000
		SELECT Product, AVG(Sales_Amount)FROM Sales
		GROUP BY Product
		HAVING AVG(Sales_Amount) < 10000

--9.	Display Years with Maximum Sales Exceeding 500
		SELECT Year FROM Sales
		GROUP BY Year
		HAVING MAX(Sales_Amount) > 500

--10.	Display Regions with at Least 3 Distinct Products Sold.
		SELECT Region FROM Sales
		GROUP BY Region
		HAVING COUNT(DISTINCT Product) >= 3

--11.	Display Years with Minimum Sales Less Than 1000
		SELECT Year FROM Sales
		GROUP BY Year
		HAVING MIN(Sales_Amount) < 1000

--12.	Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
		SELECT Region, SUM(Sales_Amount)FROM Sales
		WHERE Year = 2023
		GROUP BY Region
		ORDER BY SUM(Sales_Amount) DESC

--Part-B:
--1.	Display Count of Orders by Year and Region, Sorted by Year and Region
		SELECT Year, Region, COUNT(*)FROM Sales
		GROUP BY Year, Region
		ORDER BY Year, Region

--2.	Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
		SELECT Region FROM Sales
		GROUP BY Region, Year
		HAVING MAX(Sales_Amount) > 1000
		ORDER BY Region

--3.	Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
		SELECT Year, SUM(Sales_Amount)FROM Sales
		GROUP BY Year
		HAVING SUM(Sales_Amount) < 1000
		ORDER BY Year DESC

--4.	Display Top 3 Regions by Total Sales Amount in Year 2024
		SELECT TOP 3 Region, SUM(Sales_Amount) FROM Sales
		WHERE Year = 2024
		GROUP BY Region
		ORDER BY SUM(Sales_Amount) DESC

--Part-C:
--1.	Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
		SELECT Product, AVG(Sales_Amount)FROM Sales
		GROUP BY Product
		HAVING AVG(Sales_Amount) BETWEEN 1000 AND 2000
		ORDER BY Product

--2.	Display Years with More Than 5 Orders from Each Region
		SELECT Year FROM Sales
		GROUP BY Year, Region
		HAVING COUNT(*) > 5
		ORDER BY Year

--3.	Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
		SELECT Region, AVG(Sales_Amount)FROM Sales
		WHERE Year = 2023
		GROUP BY Region
		HAVING AVG(Sales_Amount) > 1500
		ORDER BY  AVG(Sales_Amount) DESC

