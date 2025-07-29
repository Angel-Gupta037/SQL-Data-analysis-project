/* Segmentation of products into cost ranges and
total count of products falling into each segment. */
WITH product_segment AS(
SELECT 
product_key,
product_name,
cost,
CASE WHEN cost < 100 THEN 'below 100'
	 WHEN cost BETWEEN 100 AND 500 THEN '100-500'
	 WHEN cost BETWEEN 500 AND 1000 THEN '500-1000'
	 ELSE 'Above 1000'
END cost_range
FROM dbo.[gold.dim_products]
)

SELECT
cost_range,
COUNT(product_key) AS range_segment
FROM product_segment
GROUP BY cost_range
ORDER BY cost_range DESC