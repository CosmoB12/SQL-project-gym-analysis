--Question: Whether lifestyle factors such as water intake or workout frequency appear connected to workout outcomes
CREATE VIEW lifestyle_on_performance AS
SELECT 
    CASE
    WHEN water_intake < 2 THEN 'Low'
    WHEN water_intake  BETWEEN 2 AND 3 THEN 'Moderate'
    WHEN water_intake BETWEEN 3 AND 4 THEN 'High'
    WHEN water_intake > 4 THEN 'Very high'
    ELSE 'No data'
    END AS water_intake_buckets,
    COUNT(*) AS members,
    AVG(calories_burned) AS average_calories_burned,
    AVG(session_duration_hours) AS average_session_duration
   
FROM
    fitness_habits
JOIN
     workouts ON fitness_habits.member_id  = workouts.member_id
GROUP BY
     water_intake_buckets
ORDER BY
    average_calories_burned DESC


--members who have higher water intake levels seem to burned more calories on average, and also have longer workout sessions on average


