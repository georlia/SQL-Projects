SELECT 
	a.first_name,
	(a.num + b.num) AS total_occurrences
FROM baby_names AS a
JOIN baby_names AS b
 ON a.first_name = b.first_name
WHERE a.year = 1920 
  AND b.year = 2020 
  AND a.sex = 'F' 
  AND b.sex = 'F'
ORDER BY total_occurrences DESC;