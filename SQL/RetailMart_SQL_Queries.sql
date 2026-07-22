-- =====================================================
-- RetailMart India Business Analytics Project
-- SQL Queries
-- Developed by Trupti Unde
-- =====================================================

USE retailmart_india;

---------------------------------------------------------
-- 1. Total Sales
---------------------------------------------------------
SELECT
ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders;

---------------------------------------------------------
-- 2. Total Profit
---------------------------------------------------------
SELECT
ROUND(SUM(Profit),2) AS Total_Profit
FROM Orders;

---------------------------------------------------------
-- 3. Total Orders
---------------------------------------------------------
SELECT
COUNT(DISTINCT Order_ID) AS Total_Orders
FROM Orders;

---------------------------------------------------------
-- 4. Total Customers
---------------------------------------------------------
SELECT
COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM Orders;

---------------------------------------------------------
-- 5. Total Quantity Sold
---------------------------------------------------------
SELECT
SUM(Quantity) AS Total_Quantity
FROM Orders;

---------------------------------------------------------
-- 6. Average Discount
---------------------------------------------------------
SELECT
ROUND(AVG(Discount)*100,2) AS Avg_Discount_Percentage
FROM Orders;

---------------------------------------------------------
-- 7. Sales by Region
---------------------------------------------------------
SELECT
Region,
ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders
GROUP BY Region
ORDER BY Total_Sales DESC;

---------------------------------------------------------
-- 8. Sales by Category
---------------------------------------------------------
SELECT
Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders
GROUP BY Category
ORDER BY Total_Sales DESC;

---------------------------------------------------------
-- 9. Sales by Sub-Category
---------------------------------------------------------
SELECT
Sub_Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;

---------------------------------------------------------
-- 10. Top 10 Customers
---------------------------------------------------------
SELECT
Customer_Name,
ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

---------------------------------------------------------
-- 11. Sales by State
---------------------------------------------------------
SELECT
State,
ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders
GROUP BY State
ORDER BY Total_Sales DESC;

---------------------------------------------------------
-- 12. Customer Segment Analysis
---------------------------------------------------------
SELECT
Segment,
COUNT(DISTINCT Customer_ID) AS Customers,
ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders
GROUP BY Segment;

---------------------------------------------------------
-- End of SQL File
---------------------------------------------------------
