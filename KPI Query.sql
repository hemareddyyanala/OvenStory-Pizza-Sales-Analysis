
-- Total Revenue:
SELECT 
    SUM(total_price) AS Total_Revenue
FROM
    pizza_sales;


-- Average Order Value
SELECT 
    SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_Order_Value
FROM
    pizza_sales;


-- Total Pizzas Sold
SELECT 
    SUM(quantity) AS Total_Pizza_Sold
FROM
    pizza_sales;


-- Total Orders
SELECT 
    COUNT(DISTINCT order_id) AS Total_Orders
FROM
    pizza_sales;


-- Average Pizzas Per Order
SELECT 
    CAST((SUM(quantity) / COUNT(DISTINCT order_id))
        AS DECIMAL (10 , 2 )) AS Avg_Pizza_Per_Order
FROM
    pizza_sales;