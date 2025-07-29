/* Analysis of Sales Performance over time*/

SELECT
YEAR(order_date) AS order_month,
MONTH(order_date) AS order_month,
SUM(sales_amount) as total_sales,
count(DISTINCT customer_key) AS total_customer,
sum(quantity) AS total_quantity
FROM dbo.[gold.fact_sales]
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date),MONTH(order_date)