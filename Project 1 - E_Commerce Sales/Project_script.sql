USE ecommerce;

#TASK 1. Find the categories generating highest sales revenue.
SELECT category, sum(sales) as total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue desc;


#TASK 2. Identify the top cities in terms of orders.
SELECT city, COUNT(order_id) AS total_orders
FROM sales
GROUP BY city
ORDER BY total_orders DESC;


#TASK 3. Find out the monthly sales trend.
SELECT month, year, SUM(sales) AS monthly_sales
FROM sales
GROUP BY year, month
ORDER BY year, month;


#TASK 4. Find the top 10 profitable products.
SELECT product_name, SUM(profit) AS total_profit
FROM sales
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10; 


#TASK 5. Find out the loss making products.
SELECT product_name, SUM(profit) AS total_profit
FROM sales
GROUP BY product_name
ORDER BY total_profit;
