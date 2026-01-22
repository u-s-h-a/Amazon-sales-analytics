CREATE DATABASE amazon_analysis;
GO
USE amazon_analysis;
GO
SELECT name 
FROM sys.databases;

USE amazon_analysis;
GO

CREATE USER powerbi_user FOR LOGIN powerbi_user;
GO

ALTER ROLE db_owner ADD MEMBER powerbi_user;
GO

USE amazon_analysis;

USE amazon_analysis;
GO

CREATE TABLE orders (
    order_id VARCHAR(50),
    order_date DATE,
    customer_id VARCHAR(50),
    product_name VARCHAR(255),
    category VARCHAR(100),
    quantity INT,
    total_sales DECIMAL(10,2),
    region VARCHAR(100)
);

CREATE TABLE customers (
    customer_id VARCHAR(50),
    total_orders INT,
    total_sales DECIMAL(10,2),
    avg_order_value DECIMAL(10,2)
);

CREATE TABLE products (
    product_name VARCHAR(255),
    total_quantity INT,
    total_sales DECIMAL(10,2)
);
GO


USE amazon_analysis;

SELECT COUNT(*) AS orders_count FROM orders;
SELECT COUNT(*) AS customers_count FROM customers;
SELECT COUNT(*) AS products_count FROM products;





