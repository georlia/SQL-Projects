SELECT 
	industry_group,
	COUNT(DISTINCT company) AS num_companies,
	ROUND(SUM(carbon_footprint_pcf),1) AS total_industry_footprint
FROM product_emissions
WHERE year = 2017
GROUP BY industry_group,year
ORDER BY total_industry_footprint DESC;