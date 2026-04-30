SELECT 
	RANK() OVER(ORDER BY SUM(num) DESC) AS name_rank,
	first_name,
	SUM(num) AS sum
FROM baby_names
WHERE sex = 'M' 
GROUP BY first_name
LIMIT 20;