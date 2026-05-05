SELECT
	CASE 
	    WHEN hours_studied BETWEEN 1 AND 5 THEN '1-5 hours'
	    WHEN hours_studied BETWEEN 6 AND 10 THEN '6-10 hours'
	    WHEN hours_studied BETWEEN 11 AND 15 THEN '11-15 hours'
	    ELSE '16+ hours'
	END AS hours_studied_range,
	AVG(exam_score) AS avg_exam_score
FROM student_performance
GROUP BY hours_studied_range
ORDER BY avg_exam_score DESC;