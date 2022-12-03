--EJERCICIO4
SELECT region, country, total_revenue,DENSE_RANK() OVER (PARTITION BY region ORDER BY total_revenue DESC) AS rank
FROM `DatasetAyR.Sales_Record`
ORDER BY region DESC;