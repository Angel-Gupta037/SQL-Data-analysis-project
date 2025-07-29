-- Analysis od categories which contributed the most to overall sales

WITH category_sales AS(
SELECT
category,
SUM(sales_amount) AS total_sales
FROM dbo.[gold.fact_sales] f
LEFT JOIN dbo.[gold.dim_products] p
ON p.product_key= f.product_key
GROUP BY category
)

SELECT
category,
total_sales,
SUM(total_sales) OVER ()  overall_Sales,
CONCAT(ROUND((CAST(total_sales AS FLOAT)/SUM(total_sales) OVER ())* 100,2),'%') AS Total_percentage
FROM category_sales
ORDER BY total_sales DESC