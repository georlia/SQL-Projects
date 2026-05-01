SELECT 
	u.year,
	u.num_games,
	c.avg_critic_score,
	u.avg_user_score,
	(avg_critic_score - avg_user_score) AS diff
FROM users_avg_year_rating AS u
INNER JOIN critics_avg_year_rating AS c
ON u.year = c.year
WHERE c.avg_critic_score > 9 OR u.avg_user_score > 9
ORDER BY u.year;