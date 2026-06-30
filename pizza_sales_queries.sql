-- 1. Total Revenue [00:30:18]
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;

-- 2. Average Order Value [00:33:55]
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_Order_Value FROM pizza_sales;

-- 3. Total Pizzas Sold [00:36:44]
SELECT SUM(quantity) AS Total_Pizza_Sold FROM pizza_sales;

-- 4. Total Unique Orders placed [00:37:56]
SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales;

-- 5. Average Pizzas Per Order (using Cast to avoid decimals getting truncated) [00:39:13]
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
            CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) 
            AS DECIMAL(10,2)) AS Avg_Pizzas_Per_Order
FROM pizza_sales;