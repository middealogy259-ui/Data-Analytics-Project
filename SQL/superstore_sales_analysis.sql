/*
SUPERSTORE SALES ANALYSIS

Tools Used:
- Excel
- MySQL
- Power BI
- Python

Objective:
Analyze sales performance, customer behavior,
product performance, and regional profitability.
*/

USE superstore_db;

-- Total Sales

SELECT SUM(Sales) AS Total_Sales
FROM `sample - superstore (1)`;

-- Total Records

SELECT COUNT(*)
FROM `sample - superstore (1)`;

-- Sales by Category
-- Technology generated the highest sales

SELECT Category,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore (1)`
GROUP BY Category;

-- Profit by Region
-- West region generated the highest profit

SELECT Region,
       SUM(Profit) AS Total_Profit
FROM `sample - superstore (1)`
GROUP BY Region;

-- Top 10 Customers
-- Sean Miller is the highest revenue-generating customer

SELECT `Customer Name`,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore (1)`
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 10 Products by Sales

SELECT `Product Name`,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore (1)`
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 5 States by Sales

SELECT State,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore (1)`
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 5;


/*
KEY INSIGHTS :

1. Technology category generated the highest sales.
2. West region generated the highest profit.
3. Sean Miller was the top revenue-generating customer.
4. Canon imageCLASS 2200 Advanced Copier was the best-selling product.
5. California recorded the highest sales among all states.

*/