/* Adidas US Sales and Consumer Analytics: Regional Insights & Economic Impact */

/* The Dataset */
SELECT *
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset

/* Understanding Dataset Features (Columns) */

-- List of Retailers
SELECT DISTINCT(Retailer)
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
ORDER BY Retailer

-- List of Regions
SELECT DISTINCT(Region)
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
ORDER BY Region

-- List of States
SELECT DISTINCT(State)
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
ORDER BY State

-- List of Cities
SELECT DISTINCT(City)
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
ORDER BY City

-- List of Product Categories
SELECT DISTINCT(Product)
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
ORDER BY Product

-- List of Distribution Channels
SELECT DISTINCT(Sales_Method) AS Distribution_Channels
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
ORDER BY Distribution_Channels

/* Number of Cities by State */
SELECT DISTINCT(State), COUNT(DISTINCT(City)) AS Number_Of_Cities
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY State
ORDER BY COUNT(DISTINCT(City)) DESC, State

/*Retailers with the Highest Total Sales */
SELECT Retailer,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer
ORDER BY SUM(Total_Sales) DESC

-- Retailers with the highest total sales by region
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) DESC

--- 1. Northeast
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Northeast'
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) DESC

--- 2. Midwest
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Midwest'
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) DESC

--- 3. Southeast
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Southeast'
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) DESC

--- 4. South
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'South'
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) DESC

--- 5. West
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'West'
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) DESC

-- Retailers with the highest total sales by state
SELECT Retailer, State,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, State
ORDER BY SUM(Total_Sales) DESC

-- Retailers with the highest total sales by city
SELECT Retailer, City,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, City
ORDER BY SUM(Total_Sales) DESC

/* Retailers with the Highest Operating Profit */
SELECT Retailer, '$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer
ORDER BY OperatingProfit DESC

-- Retailers with the highest operating profit by region 
SELECT Retailer, Region, '$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

--- 1. Northeast
SELECT Retailer, Region, '$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Northeast'
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

--- 2. Midwest
SELECT Retailer, Region, '$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Midwest'
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

--- 3. Southeast
SELECT Retailer, Region, '$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Southeast'
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

--- 4. South
SELECT Retailer, Region, '$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'South'
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

--- 5. West  
SELECT Retailer, Region, '$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'West'
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

-- Retailers with the highest operating profit by state
SELECT Retailer, State, '$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ '+ FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, State
ORDER BY SUM(Operating_Profit) DESC

-- Retailers with the highest operating profit by city
SELECT Retailer, City, '$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, City
ORDER BY SUM(Operating_Profit) DESC


-- NOTE: Operating Expenses (OpEx) = Total Sales - Operating Profit

/* Retailers with the Highest Operating Expenses */
SELECT Retailer, '$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer
ORDER BY SUM(Total_Sales) - SUM(Operating_Profit) DESC

-- Retailers with the highest Operating Expenses by region
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) - SUM(Operating_Profit) DESC

--- 1. Northeast
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Northeast'
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) - SUM(Operating_Profit) DESC

--- 2. Midwest
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Midwest'
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) - SUM(Operating_Profit) DESC

--- 3. Southeast
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Southeast'
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) - SUM(Operating_Profit) DESC

--- 4. South
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'South'
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) - SUM(Operating_Profit) DESC

--- 5. West
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'West'
GROUP BY Retailer, Region
ORDER BY SUM(Total_Sales) - SUM(Operating_Profit) DESC

-- Retailers with the highest Operating Expenses by State
SELECT Retailer, State,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, State
ORDER BY SUM(Total_Sales) - SUM(Operating_Profit) DESC

-- Retailers with the highest Operating Expenses by City
SELECT Retailer, City,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, City
ORDER BY SUM(Total_Sales) - SUM(Operating_Profit) DESC

/* Using 'ORDER BY OperatingExpenses' will not give an orderly output since the format function works that way.
The order is done lexicographically (like text). To avoid that, use the column name before the formatting:
ORDER BY SUM(Total_Sales) - SUM(Operating_Profit) DESC */

/*Retailers with the highest Operating Margins*/
SELECT Retailer,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer
ORDER BY OperatingMargin DESC

--Retailers with the highest Operating Margins by Region
SELECT Retailer, Region,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, Region
ORDER BY OperatingMargin DESC

--- 1. Northeast
SELECT Retailer, Region,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Northeast'
GROUP BY Retailer, Region
ORDER BY OperatingMargin DESC

--- 2. Midwest
SELECT Retailer, Region,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Midwest'
GROUP BY Retailer, Region
ORDER BY OperatingMargin DESC

--- 3. Southeast
SELECT Retailer, Region,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Southeast'
GROUP BY Retailer, Region
ORDER BY OperatingMargin DESC

--- 4. South
SELECT Retailer, Region,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'South'
GROUP BY Retailer, Region
ORDER BY OperatingMargin DESC

--- 5. West
SELECT Retailer, Region,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'West'
GROUP BY Retailer, Region
ORDER BY OperatingMargin DESC

/* Why does sports direct has the highest operating margin? is it the selection of markets? Yes.
Regions like South, Midwest and parts of Southeast have lower cost of living, minimum wages, thus 
leading to an overall lower operating expenses. This leads to higher operating margins than retailers
like West Gear, whose primary markets are the western states.*/

/* Retail Performance Analysis by Region */

-- 1. Sports Direct
SELECT Retailer, Region,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Sports Direct'
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

-- 2. Foot Locker
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Foot Locker'
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

-- 3. West Gear
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'West Gear'
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

-- 4. Kohl's
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer LIKE 'Kohl%'
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

-- 5. Amazon 
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Amazon'
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

-- 6. Walmart
SELECT Retailer, Region,'$ ' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Walmart'
GROUP BY Retailer, Region
ORDER BY SUM(Operating_Profit) DESC

/* State-Level Retail Performance Analysis */

-- 1. West Gear
SELECT Retailer, State,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'West Gear'
GROUP BY Retailer, State
ORDER BY SUM(Operating_Profit) DESC

-- 2. Foot Locker
SELECT Retailer, State,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Foot Locker'
GROUP BY Retailer, State
ORDER BY SUM(Operating_Profit) DESC

-- 3. Sports Direct
SELECT Retailer, State,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Sports Direct'
GROUP BY Retailer, State
ORDER BY SUM(Operating_Profit) DESC

-- 4. Kohl's
SELECT Retailer, State,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer LIKE 'Kohl%'
GROUP BY Retailer, State
ORDER BY SUM(Operating_Profit) DESC

-- 5. Amazon
SELECT Retailer, State,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Amazon'
GROUP BY Retailer, State
ORDER BY SUM(Operating_Profit) DESC

-- 6. Walmart
SELECT Retailer, State,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Walmart'
GROUP BY Retailer, State
ORDER BY SUM(Operating_Profit) DESC

/* City-Level Retail Performance Analysis */

-- 1. West Gear
SELECT Retailer, City,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'West Gear'
GROUP BY Retailer, City
ORDER BY SUM(Operating_Profit) DESC

-- 2. Foot Locker
SELECT Retailer, City,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Foot Locker'
GROUP BY Retailer, City
ORDER BY SUM(Operating_Profit) DESC

-- 3. Sports Direct
SELECT Retailer, City,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Sports Direct'
GROUP BY Retailer, City
ORDER BY SUM(Operating_Profit) DESC

-- 4. Kohl's
SELECT Retailer, City,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer LIKE 'kohl%'
GROUP BY Retailer, City
ORDER BY SUM(Operating_Profit) DESC

-- 5. Amazon
SELECT Retailer, City,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Amazon'
GROUP BY Retailer, City
ORDER BY SUM(Operating_Profit) DESC

-- 6. Walmart
SELECT Retailer, City,'$ ' +FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$ ' +FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$ ' +FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Walmart'
GROUP BY Retailer, City
ORDER BY SUM(Operating_Profit) DESC

/*Key Macroeconomic Indicators by State*/
SELECT *
FROM AdidasSalesAnalyticsProject.dbo.State_economic_indicators

/* Total Sales and Key Macroeconomic Indicators Correlation Analysis */

--- Creating a temp table for temporary storage of the 'sales by state' query
DROP TABLE IF EXISTS #temp_SalesByState
CREATE TABLE #temp_SalesByState (
State nvarchar(50),
TotalSales float
)

INSERT INTO #temp_SalesByState
SELECT State, SUM(Total_Sales) AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY State
ORDER BY SUM(Total_Sales) DESC

--- Correlation between Total Sales with State Unemployment Rate
SELECT #temp_SalesByState.State, TotalSales, Unemployment_rate
FROM #temp_SalesByState
FULL OUTER JOIN AdidasSalesAnalyticsProject.dbo.State_economic_indicators as Indicators
ON #temp_SalesByState.State = Indicators.State
ORDER BY TotalSales DESC

/*the above table doesn't shows any clear colleration between sales and unemployment rate figures */

-- 2. Correlation between Total Sales with Average Household Income
SELECT #temp_SalesByState.State, TotalSales, Avg_household_income
FROM #temp_SalesByState
FULL OUTER JOIN AdidasSalesAnalyticsProject.dbo.State_economic_indicators AS Indicators
ON #temp_SalesByState.State = Indicators.State
ORDER BY Avg_household_income DESC

/* for every $1 increase in household income, the sales figure increase by $77.4 */

-- 3. Correlation Between Total Sales with Population
SELECT #temp_SalesByState.State, TotalSales, Population
FROM #temp_SalesByState
FULL OUTER JOIN AdidasSalesAnalyticsProject.dbo.State_economic_indicators AS Indicators
ON #temp_SalesByState.State = Indicators.State
ORDER BY Population DESC

/* For every unit increase in population, the sales rises by $1.33 */

/*Operating Profit and Key Macroeconomic Indicators Correlation Analysis*/

-- creating a temp table for temporarily storing the Operating Profit by state
DROP TABLE IF EXISTS #temp_OpProfitByState
CREATE TABLE #temp_OpProfitByState (
State nvarchar(50),
TotalSales float,
OperatingExpenses float,
OperatingProfit float
)

INSERT INTO #temp_OpProfitByState
SELECT State,SUM(Total_Sales) AS TotalSales ,
(SUM(Total_Sales)-SUM(Operating_Profit)) AS OperatingExpenses,
SUM(Operating_Profit) AS OperatingProfit
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY State

SELECT *
FROM #temp_OpProfitByState
ORDER BY OperatingProfit DESC

-- 1. correlation between Operating profit and unemployment rate
SELECT Indicators.State, TotalSales, OperatingExpenses, OperatingProfit, Unemployment_rate
FROM #temp_OpProfitByState
FULL OUTER JOIN AdidasSalesAnalyticsProject.dbo.State_economic_indicators AS Indicators
ON #temp_OpProfitByState.State = Indicators.State
ORDER BY Unemployment_rate

--2. correlation between operating profit and average household income
SELECT Indicators.State, TotalSales, OperatingExpenses, OperatingProfit, Avg_household_income
FROM #temp_OpProfitByState
FULL OUTER JOIN AdidasSalesAnalyticsProject.dbo.State_economic_indicators AS Indicators
ON #temp_OpProfitByState.State = Indicators.State
ORDER BY Avg_household_income

--3. correlation between operating profit and population
SELECT Indicators.State, TotalSales, OperatingExpenses, OperatingProfit, Population
FROM #temp_OpProfitByState
FULL OUTER JOIN AdidasSalesAnalyticsProject.dbo.State_economic_indicators AS Indicators
ON #temp_OpProfitByState.State = Indicators.State
ORDER BY Population

/* For every 1.24 unit increase in population, the operating profits increase by $1 */

/*Hourly Minimum Wage by State*/
SELECT *
FROM AdidasSalesAnalyticsProject.dbo.StateMinWages

/* Correlation between operating margin with State minimum wage */

-- Creating a temp table to store the Key Performance Indicators (KPIs) by state
DROP TABLE IF EXISTS #temp_state_margins
CREATE TABLE #temp_state_margins (
State varchar(50),
TotalSales int,
OperatingProfit int,
OperatingExpenses int,
OperatingMargin float
)
INSERT INTO #temp_state_margins
--Operating Margins by state
SELECT TOP 1000 State, SUM(Total_Sales) AS TotalSales,
SUM(Operating_Profit) AS OperatingProfit,
SUM(Total_Sales) - SUM(Operating_Profit) AS OperatingExpenses,
(SUM(Operating_Profit)/SUM(Total_Sales))*100 AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY State
ORDER BY OperatingMargin DESC

--Temp Table
SELECT * 
FROM #temp_state_margins

-- Table showing the relation between operating margin and minimum wage
SELECT #temp_state_margins.State, OperatingMargin, Minimum_Wage_Per_Hour
FROM #temp_state_margins
FULL OUTER JOIN AdidasSalesAnalyticsProject.dbo.StateMinWages
ON #temp_state_margins.State = StateMinWages.State
WHERE OperatingMargin IS NOT NULL
ORDER BY OperatingMargin DESC

/* A linear regression plot of the above table would show a correlation between minimum wages and operating margin.
From the above query we can see that there is a direct correlation between the minimum wages and the
operating margin as employee salary is one of the biggest operational expenses */

/*Average Annual Warehouse Rent per Square feet*/
SELECT *
FROM AdidasSalesAnalyticsProject.dbo.State_avg_rent

/* Correlation between operating margin and the average rent per sq feet for warehouses */

--Creating a Common table Expression (CTE) for the query showing operating margins by state
WITH Avg_Rent AS (
SELECT TOP 1000 State, SUM(Total_Sales) AS TotalSales,
SUM(Operating_Profit) AS OperatingProfit,
SUM(Total_Sales) - SUM(Operating_Profit) AS OperatingExpenses,
(SUM(Operating_Profit)/SUM(Total_Sales))*100 AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY State
ORDER BY OperatingMargin DESC
)
--Table showing correlation between the operating margin and annual average rent per sq feet
SELECT Avg_Rent.State, OperatingMargin, Avg_annual_rent_sqft
FROM Avg_Rent
FULL OUTER JOIN AdidasSalesAnalyticsProject.dbo.State_avg_rent AS state_avg
ON Avg_Rent.State = state_avg.State

/*For every $1 increase in the rent per sq feet, the operating margin decreases by 0.82% */

/*Products with the highest Operating Margins*/
SELECT Product, FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product
ORDER BY OperatingMargin DESC

/*Products with the highest Operating Profit*/
SELECT Product, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product
ORDER BY OperatingProfit DESC

/* Products with Superior Operating Profit by Region */

-- 1. Men's Street Footwear
SELECT Product, Region, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Product LIKE 'Men%Street Footwear'
GROUP BY Product, Region
ORDER BY SUM(Operating_Profit) DESC

-- 2. Women's Street Footwear
SELECT Product, Region, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Product LIKE 'Women%Street Footwear'
GROUP BY Product, Region
ORDER BY SUM(Operating_Profit) DESC

-- 3. Men's Athletic Footwear
SELECT Product, Region, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Product LIKE 'Men%Athletic Footwear'
GROUP BY Product, Region
ORDER BY SUM(Operating_Profit) DESC

-- 4. Women's Athletic Footwear
SELECT Product, Region, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Product LIKE 'Women%Athletic Footwear'
GROUP BY Product, Region
ORDER BY SUM(Operating_Profit) DESC

-- 5. Men's Apparel
SELECT Product, Region, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Product LIKE 'Men%Apparel'
GROUP BY Product, Region
ORDER BY SUM(Operating_Profit) DESC

-- 6. Women's Apparel
SELECT Product, Region, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Product LIKE 'Women%Apparel'
GROUP BY Product, Region
ORDER BY SUM(Operating_Profit) DESC

/*State-Level Products with Optimal Operating Profit*/
SELECT Product, State, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product, State
ORDER BY SUM(Operating_Profit) DESC

/*City-Level Products with Optimal Operating Profit*/
SELECT Product, City, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product, City
ORDER BY SUM(Operating_Profit) DESC

/* Key Performance Indicators (KPIs) by Sales Method */
SELECT Sales_Method, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Sales_Method
ORDER BY OperatingMargin DESC

/* Distribution channels performance by retailer */
SELECT Retailer, Sales_Method, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, Sales_Method
ORDER BY OperatingMargin DESC


/*Operating margin for Distribution channels by region for each retailer */
SELECT Retailer, Sales_Method, Region, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, Sales_Method, Region
ORDER BY OperatingMargin DESC

/*operating margin for distribution channels by state for each retailer */
SELECT Retailer, Sales_Method, State, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, Sales_Method, State
ORDER BY OperatingMargin DESC

/* operating margin for distribution channels by city for each retailer */
SELECT Retailer, Sales_Method, City, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, Sales_Method, City
ORDER BY OperatingMargin DESC

/* Operating margin for sales method by region */
SELECT Sales_Method, Region, '$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
'$' + FORMAT(SUM(Total_Sales) - SUM(Operating_Profit), 'N2') AS OperatingExpenses,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Sales_Method, Region
ORDER BY OperatingMargin DESC

/* Market Share Analysis */

-- Comparing the locations with highest units sold with the population, average household income, unemployment rate etc.
DROP TABLE IF EXISTS #temp_KEIs
CREATE TABLE #temp_KEIs (
State nvarchar(50),
Unemployment_rate float,
Avg_household_income float,
Population float
)

INSERT INTO #temp_KEIs
SELECT *
FROM AdidasSalesAnalyticsProject.dbo.State_economic_indicators

SELECT *
FROM #temp_KEIs

/*	Units Sold by Location */

-- Regions with the highest Units Sold
SELECT Region, FORMAT(SUM(Units_Sold), 'N2') AS UnitsSold
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Region
ORDER BY UnitsSold DESC

-- States with the highest Units Sold
SELECT State,FORMAT(SUM(Units_Sold), 'N2') AS UnitsSold
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY State
ORDER BY UnitsSold DESC

-- Cities with the highest Units Sold
SELECT City, FORMAT(SUM(Units_Sold), 'N2') AS UnitsSold
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY City
ORDER BY UnitsSold DESC

/* Retailers with the highest units sold */
SELECT Retailer, FORMAT(SUM(Units_Sold), 'N2') AS UnitsSold
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer
ORDER BY SUM(Units_Sold) DESC

-- Retailers with the highest total units sold by region
SELECT Retailer, Region, FORMAT(SUM(Units_Sold), 'N2') AS UnitsSold
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, Region
ORDER BY SUM(Units_Sold) DESC

-- Retailers with the highest total units sold by state
SELECT Retailer, State, FORMAT(SUM(Units_Sold), 'N2') AS UnitsSold
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, State
ORDER BY SUM(Units_Sold) DESC

-- Retailers with the highest total units sold by city
SELECT Retailer, City, FORMAT(SUM(Units_Sold), 'N2') AS UnitsSold
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Retailer, City
ORDER BY SUM(Units_Sold) DESC

/*Seasonality factor analysis*/

-- Seasonality in Sales figures for the year 2020
SELECT MONTH(Invoice_Date) AS Month,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT((SUM(Total_Sales) - SUM(Operating_Profit)), 'N2') AS OperatingExpenses,
'$'+ FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE YEAR(Invoice_Date) = 2020
GROUP BY MONTH(Invoice_Date)
ORDER BY MONTH(Invoice_Date)

/* The increae in sales during april and october can be understood as pre summer and pre holiday season
 shopping behaviors. people often refresh their wardrobes before the summer season. nsumers start to
 prepare for holiday season activities, including Black Friday and gift-giving, although it could also
 reflect back-to-school shopping, especially for Adidas. A similar purchasing pattern is observed across 
 numerous industries. */

-- Seasonality in Sales figures for the year 2021
SELECT MONTH(Invoice_Date) AS Month,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT((SUM(Total_Sales) - SUM(Operating_Profit)), 'N2') AS OperatingExpenses,
'$'+ FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE YEAR(Invoice_Date) = 2021
GROUP BY MONTH(Invoice_Date)
ORDER BY MONTH(Invoice_Date)

/* Sales spikes in summer (May-July) and the holiday season (November-December) were significant, reflecting
 traditional retail behaviors. Adidas also benefitted from back-to-school and holiday shopping, which 
 boosted sales in Q3 and Q4. The strong performance in 2021 could also reflect a recovery from the global 
 pandemic. Many customers, especially in Q2 and Q3, may have been more inclined to spend on fitness-related
 products and leisurewear as they adapted to post-pandemic life. */


/* which regions have a seasonality factor? */
-- 1. South
SELECT MONTH(Invoice_Date) AS Month, Region,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT((SUM(Total_Sales) - SUM(Operating_Profit)), 'N2') AS OperatingExpenses,
'$'+ FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'South'
GROUP BY MONTH(Invoice_Date), Region
ORDER BY MONTH(Invoice_Date)

/* The sales figures for the South, peak around both april and september with the september's profits much larger
 than that of april indicating that the back to school/black friday/holiday season shopping behavior is much
more prominent in the southern consumer base than the pre summer shopping behavior. */

-- 2. Southeast
SELECT MONTH(Invoice_Date) AS Month, Region,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT((SUM(Total_Sales) - SUM(Operating_Profit)), 'N2') AS OperatingExpenses,
'$'+ FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Southeast'
GROUP BY MONTH(Invoice_Date), Region
ORDER BY MONTH(Invoice_Date)

/* Strong demand for sportswear and athleisure in the warmer months, with peaks in summer and back-to-school periods.
Slightly lower sales in the early year, with consistent profitability due to strong margins in the post-holiday months.
Sports-driven sales are particularly significant in August and September, linked to the start of football and basketball seasons.
Promotions during key seasonal events (e.g., holidays, back-to-school) may slightly reduce margins, but they still generate strong sales figures.
The warm climate and active lifestyle in the Southeast drive a consistent demand for comfortable, functional athletic wear, especially running shoes,
sneakers, and casual apparel. */

-- 3. Northeast
SELECT MONTH(Invoice_Date) AS Month, Region,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT((SUM(Total_Sales) - SUM(Operating_Profit)), 'N2') AS OperatingExpenses,
'$'+ FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Northeast'
GROUP BY MONTH(Invoice_Date), Region
ORDER BY MONTH(Invoice_Date)

/* A spike in sales is observered during march and december. The pre summer behavior is mildly observed along
 with post holiday shopping behavior. The northeastern consumers have this peculiar behavior of post holiday
season shopping which shows that back to school/black friday/pre holiday sales aren't that relevant in northeast.
 Although there is a small peak for the month of september which mainly be beacuse of the back to school shopping. */

-- 4. Midwest
SELECT MONTH(Invoice_Date) AS Month, Region,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT((SUM(Total_Sales) - SUM(Operating_Profit)), 'N2') AS OperatingExpenses,
'$'+ FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'Midwest'
GROUP BY MONTH(Invoice_Date), Region
ORDER BY MONTH(Invoice_Date)

/* The Midwest market for Adidas shows seasonal fluctuations in consumer spending, with clear peaks
 in June and July, followed by holiday-related shopping in December. */

-- 5. West
SELECT MONTH(Invoice_Date) AS Month, Region,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT((SUM(Total_Sales) - SUM(Operating_Profit)), 'N2') AS OperatingExpenses,
'$'+ FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Region = 'West'
GROUP BY MONTH(Invoice_Date), Region
ORDER BY MONTH(Invoice_Date)

/* The consistent patterns suggest that Adidas experiences typical seasonal fluctuations in the Western
 US, with peaks in January, April-May, July, and the holiday months of November-December. The lower
 sales months—August and September—are likely driven by the transition between seasons. */

/* Year over Year Sales Growth */
SELECT YEAR(Invoice_Date) AS Year,'$'+ FORMAT(SUM(Total_Sales), 'N2') AS TotalSales,
'$' + FORMAT((SUM(Total_Sales) - SUM(Operating_Profit)), 'N2') AS OperatingExpenses,
'$'+ FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY YEAR(Invoice_Date)

/*Analysis of Top-Selling, High-Profit, High-Margin Product Types per Retailer*/

-- 1. Amazon
SELECT Product,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales, 
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Amazon'
GROUP BY Product
ORDER BY SUM(Operating_Profit) DESC

-- 2. Walmart
SELECT Product,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales, 
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Walmart'
GROUP BY Product
ORDER BY SUM(Operating_Profit) DESC

-- 3. West Gear
SELECT Product,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales, 
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'West Gear'
GROUP BY Product
ORDER BY SUM(Operating_Profit) DESC

-- 4. Sports Direct
SELECT Product,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales, 
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Sports Direct'
GROUP BY Product
ORDER BY SUM(Operating_Profit) DESC

--5. Kohl's
SELECT Product,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales, 
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer LIKE 'Kohl%'
GROUP BY Product
ORDER BY SUM(Operating_Profit) DESC

--6. Foot Locker
SELECT Product,'$' + FORMAT(SUM(Total_Sales), 'N2') AS TotalSales, 
'$' + FORMAT(SUM(Operating_Profit), 'N2') AS OperatingProfit,
FORMAT((SUM(Operating_Profit)/SUM(Total_Sales))*100, 'N2') + '%' AS OperatingMargin
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
WHERE Retailer = 'Foot Locker'
GROUP BY Product
ORDER BY SUM(Operating_Profit) DESC

/* Product types with their average price */
SELECT Product,'$'+ FORMAT(AVG(Price_per_Unit), 'N2') AS AvgPrice
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product
ORDER BY AVG(Price_per_Unit) DESC

/* In the following queries describing the price variation as a function of location, we can perform a comparative
 analysis if we have a dataset containing the market values of each product type to know if we are under/over selling.*/

-- Variation in the avg price by region
SELECT Product, Region, AVG(Price_per_Unit) AS RegionAvgPrice
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product, Region
ORDER BY AVG(Price_per_Unit) DESC

-- variation in the avg price by state
SELECT Product, State, AVG(Price_per_Unit) AS StateAvgPrice
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product, State
ORDER BY AVG(Price_per_Unit) DESC

-- variation in the avg price by city
SELECT Product, City,'$' + FORMAT(AVG(Price_per_Unit), 'N2') AS CityAvgPrice
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product, City
ORDER BY AVG(Price_per_Unit) DESC

/* Sales by product Type */
SELECT Product,'$'+ FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product
ORDER BY SUM(Total_Sales) DESC

--Sales of product by region
SELECT Product, Region, '$'+ FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product, Region
ORDER BY SUM(Total_Sales) DESC

--Sales of product by state
SELECT Product, State,'$'+ FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product, State
ORDER BY SUM(Total_Sales) DESC

--Sales of product by city
SELECT Product, City,'$'+ FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product, City
ORDER BY SUM(Total_Sales) DESC

/* Products with the highest total units sold */
SELECT Product, FORMAT(SUM(Units_Sold), 'N2') AS UnitsSold
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product
ORDER BY UnitsSold DESC

-- Products with the highest total units sold by region, state and city
SELECT Product, Region, FORMAT(SUM(Units_Sold), 'N2') AS UnitsSold
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product, Region
ORDER BY UnitsSold DESC

SELECT Product, State, FORMAT(SUM(Units_Sold), 'N2') AS UnitsSold
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product, State
ORDER BY UnitsSold DESC

SELECT Product, City, FORMAT(SUM(Units_Sold), 'N2') AS UnitsSold
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Product, City
ORDER BY UnitsSold DESC

/* Total Sales Performance by Sales Method */
SELECT Sales_Method, FORMAT(SUM(Total_Sales), 'N2') AS TotalSales
FROM AdidasSalesAnalyticsProject.dbo.AdidasSalesDataset
GROUP BY Sales_Method
ORDER BY SUM(Total_Sales) DESC
