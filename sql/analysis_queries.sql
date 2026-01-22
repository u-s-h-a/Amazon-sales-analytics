#Overall Business Performance
SELECT 
    SUM(total_sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers
FROM orders;

#Monthly Sales Trend
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_sales) AS monthly_sales
FROM orders
GROUP BY year, month
ORDER BY year, month;

#Top 10 Products by Revenue
SELECT 
    product_name,
    SUM(total_sales) AS revenue
FROM orders
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

#Category Performance
SELECT 
    category,
    SUM(total_sales) AS category_sales
FROM orders
GROUP BY category
ORDER BY category_sales DESC;

#High-Value Customers
SELECT 
    customer_id,
    total_sales
FROM customers
ORDER BY total_sales DESC
LIMIT 10;

#Region-wise Sales
SELECT 
    region,
    SUM(total_sales) AS region_sales
FROM orders
GROUP BY region;

#Average Order Value
SELECT 
    AVG(total_sales) AS avg_order_value
FROM orders;
