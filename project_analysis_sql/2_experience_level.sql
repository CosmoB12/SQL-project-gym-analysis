--Does your experience level affect your workout duration?
CREATE VIEW experience_level AS
SELECT
    experience_level,
    AVG(session_duration_hours) AS average_session_duration,
    AVG(calories_burned) AS average_calories_burned,
    
FROM
    workouts
GROUP BY
    experience_level

ORDER BY
    average_calories_burned DESC


--Members with higher experience levels spend more time on their sessions thus burning more calories
