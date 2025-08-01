-- Analysis of Total sales per month.
-- Analysis of running total of sales over time. 

SELECT
order_date,
total_sales,
SUM(total_sales) OVER (PARTITION BY order_date ORDER BY order_date) AS running_total_sales,
AVG(average_price) OVER (PARTITION BY order_date ORDER BY order_date) AS moving_average_price
FROM(
SELECT
DATETRUNC(YEAR,order_date) AS order_date,
SUM(sales_amount) AS total_sales,
AVG(price) AS average_price
FROM dbo.[gold.fact_sales]
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(YEAR,order_date)
)t
