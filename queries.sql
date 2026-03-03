/* Q1: What are the first 10 rows of this data set?*/

SELECT * FROM Customer_data
LIMIT 10;

/* Q2: How many total customers are there?*/

SELECT COUNT (customer_id) AS total_customers
FROM Customer_data

/* Q3: What is the average number of orders placed by customers?*/

SELECT AVG(number_of_orders) AS avg_orders
FROM Customer_data

/* Q4: What is the total amount of money spent by all customers?*/

SELECT SUM(amount) AS total_spent
FROM Customer_data

/* Q5: Who are the top 5 customers with the highest number of orders, sorted by highest number of orders?*/

SELECT customer_id, number_of_orders
FROM Customer_data
OrDER BY number_of_orders DESC
LIMIT 5;

/* Q6: Which customers placed more than 5 orders in the last 7 days?*/

SELECT customer_id, number_of_orders_last_7_days
FROM Customer_data
WHERE number_of_orders_last_7_days > 5
ORDER BY number_of_orders_last_7_days DESC;



