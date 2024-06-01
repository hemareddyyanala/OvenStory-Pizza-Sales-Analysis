CREATE DATABASE PizzaDB;
USE PizzaDB;


ALTER TABLE pizza_sales CHANGE COLUMN pizza_name_id pizza_name_id VARCHAR(50);
ALTER TABLE pizza_sales CHANGE COLUMN order_date order_date DATE;
ALTER TABLE pizza_sales CHANGE COLUMN order_time order_time TIME;
ALTER TABLE pizza_sales CHANGE COLUMN quantity quantity TINYINT;
ALTER TABLE pizza_sales CHANGE COLUMN unit_price unit_price FLOAT;
ALTER TABLE pizza_sales CHANGE COLUMN total_price total_price FLOAT;
ALTER TABLE pizza_sales CHANGE COLUMN pizza_size pizza_size VARCHAR(50);
ALTER TABLE pizza_sales CHANGE COLUMN pizza_category pizza_category VARCHAR(50);
ALTER TABLE pizza_sales CHANGE COLUMN pizza_ingredients pizza_ingredients VARCHAR(200);
ALTER TABLE pizza_sales CHANGE COLUMN pizza_name pizza_name VARCHAR(50);

