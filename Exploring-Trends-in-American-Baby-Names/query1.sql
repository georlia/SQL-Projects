SELECT 
	first_name,
	SUM(num) AS sum, 
	CASE 
	    WHEN COUNT(year) > 50 THEN 'Classic' 
	    ELSE 'Trendy' 
	END AS popularity_type
FROM baby_names
GROUP BY first_name
ORDER BY first_name
LIMIT 5;