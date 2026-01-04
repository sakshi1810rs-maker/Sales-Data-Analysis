-- Create sales table
CREATE TABLE sales (
    Order_ID INT,
    Order_Date DATE,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price INT,
    Total_Sales INT,
    Region VARCHAR(20)
);

-- Total sales
SELECT SUM(Total_Sales) AS Total_Sales FROM sales;

-- Category-wise sales
SELECT Category, SUM(Total_Sales) AS Category_Sales
FROM sales
GROUP BY Category;

-- Monthly sales
SELECT MONTH(Order_Date) AS Month, SUM(Total_Sales) AS Monthly_Sales
FROM sales
GROUP BY MONTH(Order_Date);
