1️⃣ View Latest Inserted Rows

SELECT * FROM orders_by_customer
WHERE customer_id = 'CUST123'
ORDER BY last_updated DESC
LIMIT 10;


2️⃣ Count Total Orders

SELECT COUNT(*) FROM orders_by_customer;


3️⃣ Revenue by Customer

SELECT customer_id, SUM(order_amount) AS total_spent
FROM orders_by_customer
GROUP BY customer_id;



4️⃣ Orders per Day
  
SELECT order_date, COUNT(*) AS order_count
FROM orders_by_date
GROUP BY order_date;



5️⃣ Top 5 Products Sold

SELECT product_id, COUNT(*) AS total_sold
FROM orders_by_product
GROUP BY product_id
ORDER BY total_sold DESC
LIMIT 5;





6️⃣ Last N Minutes of Changes (CDC Validation)

SELECT * FROM orders_by_customer
WHERE last_updated > toTimestamp(now()) - 300000; -- last 5 minutes



