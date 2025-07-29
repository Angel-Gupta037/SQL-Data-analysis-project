/* Analysis of Yearly performance of products By comparing each product sale 
to both its average sales performance and previous years sales. */

WITH yearly_product_sales AS( 
SELECT 
YEAR(f.order_date) AS order_yr,
p.product_name,
SUM(f.sales_amount) AS current_sales
FROM dbo.[gold.fact_sales] f
LEFT JOIN dbo.[gold.dim_products] p
ON f.product_key= p.product_key
WHERE order_date IS NOT NULL
GROUP BY YEAR(f.order_date), p.product_name)

SELECT 
order_yr,
product_name,
current_sales,
AVG(current_sales) OVER (PARTITION BY product_name) AS avg_sales,
current_sales - AVG(current_sales) OVER  (PARTITION BY product_name) AS differ_avg,
CASE WHEN current_sales-AVG(current_sales) OVER  (PARTITION BY product_name) >0 THEN 'Above Avg'
     WHEN current_sales-AVG(current_sales) OVER  (PARTITION BY product_name) <0 THEN 'Below Avg'
     ELSE 'Avg'
END avg_change, 
LAG(current_sales) OVER (PARTITION BY product_name ORDER BY order_yr) AS py_sales,
current_sales-LAG(current_sales) OVER  (PARTITION BY product_name ORDER BY order_yr) AS differ_py,
CASE WHEN current_sales-LAG(current_sales) OVER  (PARTITION BY product_name ORDER BY order_yr) >0 THEN 'Increase'
     WHEN current_sales-LAG(current_sales) OVER  (PARTITION BY product_name ORDER BY order_yr) <0 THEN 'Decrease'
     ELSE 'No change'
END py_change
FROM yearly_product_sales
ORDER BY product_name,order_yr





