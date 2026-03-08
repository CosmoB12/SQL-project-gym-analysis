--What workout type burns the most calories
CREATE VIEW workout_performance  AS
SELECT
    workout_type ,
    AVG(calories_burned) AS average_calories_burned,
    AVG(session_duration_hours) AS average_session_duration,
    COUNT(*) AS members
    
FROM 
    workouts
GROUP BY
     workout_type

ORDER BY
    average_calories_burned DESC


--Longer sessions correspond with how many calories burned