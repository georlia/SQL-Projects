SELECT 
	country_name, 
	indicator_name, 
	MIN(debt) AS lowest_repayment
FROM international_debt
WHERE indicator_code = 'DT.AMT.DLXF.CD'
GROUP BY indicator_name,country_name
ORDER BY lowest_repayment ASC
LIMIT 1;