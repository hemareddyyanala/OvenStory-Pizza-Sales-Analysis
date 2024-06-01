SELECT 
    *
FROM
    pizza_sales;

 /* Daily Trend */
SELECT 
    DAYNAME(order_date) AS order_day,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM
    pizza_sales
GROUP BY DAYNAME(order_date);


 /* Hourly Trend */
SELECT 
    HOUR(order_time) AS Hour,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM
    pizza_sales
GROUP BY HOUR(order_time);


 /* Percentage of Sales by Pizza Category */
SELECT 
    pizza_category,
    CAST(SUM(total_price) AS DECIMAL (10 , 2 )) AS Total_Sales,
    CAST(SUM(total_price) * 100 / (SELECT 
                SUM(total_price)
            FROM
                pizza_sales)
        AS DECIMAL (10 , 2 )) AS Per_Total_Sales
FROM
    pizza_sales
GROUP BY pizza_category;


-- Percentage of Sales by Pizza Size
SELECT 
    pizza_size,
    CAST(SUM(total_price) AS DECIMAL (10 , 2 )) AS Total_Sales,
    CAST((SUM(total_price) * 100) / (SELECT 
                SUM(total_price)
            FROM
                pizza_sales)
        AS DECIMAL (10 , 2 )) AS Per_Total_Sales
FROM
    pizza_sales
GROUP BY pizza_size
ORDER BY Per_Total_Sales;


--  Total Pizzas Sold by Pizza Category
SELECT 
    pizza_category, SUM(quantity) AS Total_Pizza_Sold
FROM
    pizza_sales
GROUP BY pizza_category;


-- Top 5 Best Sellers by Total Pizzas Sold
SELECT
    pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC
LIMIT 5;


-- Top 5 Worst Sellers by Total Pizzas Sold
SELECT
    pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold 
LIMIT 5;