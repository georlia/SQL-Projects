SELECT 
	weekdays_plugin,
	start_plugin_hour,
	COUNT(start_plugin) AS num_charging_sessions
FROM charging_sessions
WHERE user_type = 'Shared'
GROUP BY weekdays_plugin, start_plugin_hour
ORDER BY num_charging_sessions DESC
LIMIT 10;