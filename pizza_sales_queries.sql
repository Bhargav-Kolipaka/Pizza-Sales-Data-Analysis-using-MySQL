-- 50 MySQL Queries for Pizza Sales Dataset

-- 1. View all sales data
SELECT * FROM pizza_sales;

-- 2. Total revenue generated
SELECT SUM(total_price) AS total_revenue FROM pizza_sales;

-- 3. Total number of pizzas sold
SELECT SUM(quantity) AS total_pizzas_sold FROM pizza_sales;

-- 4. Total number of orders
SELECT COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales;

-- 5. Average order value
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS avg_order_value FROM pizza_sales;

-- 6. Average pizzas per order
SELECT (SUM(quantity) / COUNT(DISTINCT order_id)) AS avg_pizzas_per_order FROM pizza_sales;

-- 7. Total revenue by pizza category
SELECT pizza_category, SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY pizza_category
ORDER BY revenue DESC;

-- 8. Total revenue by pizza size
SELECT pizza_size, SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY pizza_size
ORDER BY revenue DESC;

-- 9. Total quantity sold by pizza size
SELECT pizza_size, SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_size
ORDER BY total_quantity DESC;

-- 10. Top 10 best-selling pizzas by revenue
SELECT pizza_name, SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY revenue DESC
LIMIT 10;

-- 11. Top 10 best-selling pizzas by quantity
SELECT pizza_name, SUM(quantity) AS total_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_sold DESC
LIMIT 10;

-- 12. Least 10 selling pizzas by revenue
SELECT pizza_name, SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY revenue ASC
LIMIT 10;

-- 13. Least 10 selling pizzas by quantity
SELECT pizza_name, SUM(quantity) AS total_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_sold ASC
LIMIT 10;

-- 14. Daily total revenue
SELECT order_date, SUM(total_price) AS daily_revenue
FROM pizza_sales
GROUP BY order_date
ORDER BY order_date;

-- 15. Average daily revenue
SELECT AVG(daily_revenue) AS avg_daily_revenue
FROM (
  SELECT order_date, SUM(total_price) AS daily_revenue
  FROM pizza_sales
  GROUP BY order_date
) AS daily_stats;

-- 16. Monthly revenue trend
SELECT DATE_FORMAT(STR_TO_DATE(order_date, '%d-%m-%Y'), '%Y-%m') AS month,
       SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY month
ORDER BY month;

-- 17. Hourly order distribution
SELECT HOUR(order_time) AS hour_of_day, COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY hour_of_day
ORDER BY hour_of_day;

-- 18. Most popular pizza category by quantity
SELECT pizza_category, SUM(quantity) AS total_sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_sold DESC
LIMIT 1;

-- 19. Revenue contribution by each category (%)
SELECT pizza_category,
       ROUND((SUM(total_price) / (SELECT SUM(total_price) FROM pizza_sales)) * 100, 2) AS revenue_percentage
FROM pizza_sales
GROUP BY pizza_category;

-- 20. Pizza with the highest unit price
SELECT pizza_name, MAX(unit_price) AS highest_price
FROM pizza_sales;

-- 21. Pizza with the lowest unit price
SELECT pizza_name, MIN(unit_price) AS lowest_price
FROM pizza_sales;

-- 22. Most frequently ordered pizza
SELECT pizza_name, COUNT(order_id) AS order_count
FROM pizza_sales
GROUP BY pizza_name
ORDER BY order_count DESC
LIMIT 1;

-- 23. Number of orders per pizza category
SELECT pizza_category, COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_category;

-- 24. Total revenue by day of the week
SELECT DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS day_name,
       SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY day_name;

-- 25. Average order value by day of week
SELECT DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS day_name,
       SUM(total_price)/COUNT(DISTINCT order_id) AS avg_order_value
FROM pizza_sales
GROUP BY day_name;

-- 26. Pizza ingredients (for text analysis)
SELECT pizza_ingredients FROM pizza_sales;

-- 27. Revenue by pizza size and category
SELECT pizza_category, pizza_size, SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY pizza_category, pizza_size
ORDER BY pizza_category, revenue DESC;

-- 28. Orders containing more than 5 pizzas
SELECT order_id, SUM(quantity) AS total_pizzas
FROM pizza_sales
GROUP BY order_id
HAVING total_pizzas > 5;

-- 29. Average pizzas per order by category
SELECT pizza_category, AVG(quantity) AS avg_quantity
FROM pizza_sales
GROUP BY pizza_category;

-- 30. Most common pizza size in each category
SELECT pizza_category, pizza_size, COUNT(*) AS count
FROM pizza_sales
GROUP BY pizza_category, pizza_size
ORDER BY pizza_category, count DESC;

-- 31. Highest revenue day
SELECT order_date, SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY order_date
ORDER BY revenue DESC
LIMIT 1;

-- 32. Lowest revenue day
SELECT order_date, SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY order_date
ORDER BY revenue ASC
LIMIT 1;

-- 33. Total quantity sold per pizza name ID
SELECT pizza_name_id, SUM(quantity) AS total_sold
FROM pizza_sales
GROUP BY pizza_name_id
ORDER BY total_sold DESC;

-- 34. Orders with multiple pizza types
SELECT order_id, COUNT(DISTINCT pizza_name_id) AS unique_pizzas
FROM pizza_sales
GROUP BY order_id
HAVING unique_pizzas > 1;

-- 36. Total revenue per hour of the day
SELECT HOUR(order_time) AS hour, SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY hour
ORDER BY hour;

-- 37. Percentage of total sales per pizza size
SELECT pizza_size,
       ROUND((SUM(total_price) / (SELECT SUM(total_price) FROM pizza_sales))*100, 2) AS sales_percentage
FROM pizza_sales
GROUP BY pizza_size;

-- 38. Average unit price per category
SELECT pizza_category, AVG(unit_price) AS avg_price
FROM pizza_sales
GROUP BY pizza_category;

-- 39. Top 3 pizza categories by number of pizzas sold
SELECT pizza_category, SUM(quantity) AS total_sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_sold DESC
LIMIT 3;

-- 40. Total number of medium-sized pizzas sold
SELECT SUM(quantity) AS total_medium_pizzas
FROM pizza_sales
WHERE pizza_size = 'M';

-- 41. Total revenue from Veggie pizzas
SELECT SUM(total_price) AS veggie_revenue
FROM pizza_sales
WHERE pizza_category = 'Veggie';

-- 42. Most expensive pizza (by unit price)
SELECT pizza_name, unit_price
FROM pizza_sales
ORDER BY unit_price DESC
LIMIT 1;

-- 43. Cheapest pizza (by unit price)
SELECT pizza_name, unit_price
FROM pizza_sales
ORDER BY unit_price ASC
LIMIT 1;

-- 44. Total number of pizzas sold by month
SELECT DATE_FORMAT(STR_TO_DATE(order_date, '%d-%m-%Y'), '%Y-%m') AS month,
       SUM(quantity) AS total_sold
FROM pizza_sales
GROUP BY month;

-- 45. Daily average quantity sold
SELECT order_date, AVG(quantity) AS avg_quantity
FROM pizza_sales
GROUP BY order_date;

-- 46. Total revenue per pizza name per month
SELECT pizza_name, DATE_FORMAT(STR_TO_DATE(order_date, '%d-%m-%Y'), '%Y-%m') AS month,
       SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY pizza_name, month
ORDER BY pizza_name, month;

-- 47. Total orders per pizza size
SELECT pizza_size, COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_size;

-- 48. Total quantity sold per category per month
SELECT pizza_category, DATE_FORMAT(STR_TO_DATE(order_date, '%d-%m-%Y'), '%Y-%m') AS month,
       SUM(quantity) AS total_sold
FROM pizza_sales
GROUP BY pizza_category, month
ORDER BY month;

-- 49. Highest grossing pizza in each category
SELECT pizza_category, pizza_name, SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY pizza_category, pizza_name
ORDER BY pizza_category, revenue DESC;

-- 50. Cumulative revenue over time
SELECT order_date,
       SUM(SUM(total_price)) OVER (ORDER BY STR_TO_DATE(order_date, '%d-%m-%Y')) AS cumulative_revenue
FROM pizza_sales
GROUP BY order_date
ORDER BY STR_TO_DATE(order_date, '%d-%m-%Y');
