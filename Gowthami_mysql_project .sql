#Create TABLE
CREATE TABLE retail_sales

#View all records
SELECT * FROM retail_sales;
SELECT * FROM retail_sales;

#Count total transactions
SELECT COUNT(*) AS total_transactions FROM retail_sales;

#Total sales revenue
SELECT SUM(total_sale) AS total_revenue FROM retail_sales;

#Total sales by category
SELECT category,
       SUM(total_sale) AS total_revenue FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;

#Average sale value per transaction
SELECT AVG(total_sale) AS avg_transaction_value FROM retail_sales;

#Monthly sales trend
SELECT 
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(MONTH FROM sale_date) AS month,
    SUM(total_sale) AS monthly_sales FROM retail_sales
GROUP BY year, month
ORDER BY year, month;

#Number of unique customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers FROM retail_sales;

#Sales by gender
SELECT gender,
       SUM(total_sale) AS total_sales FROM retail_sales
GROUP BY gender;

#Average age of customers by category
SELECT category,
       AVG(age) AS avg_customer_age FROM retail_sales
GROUP BY category;

#Best-selling category (by revenue)
SELECT category,
       SUM(total_sale) AS revenue FROM retail_sales
GROUP BY category
ORDER BY revenue DESC
LIMIT 1;

#Total profit
SELECT SUM(total_sale - cogs) AS total_profit FROM retail_sales;

