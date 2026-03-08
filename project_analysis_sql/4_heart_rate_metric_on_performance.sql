--Question: Whether heart rate metrics vary across workout types or individuals
CREATE VIEW heart_rate_metrics_on_performance AS
SELECT

    workouts.workout_type,
    AVG(max_bpm) as average_max_bpm,
    AVG(avg_bpm) as average_bpm,
    AVG(resting_bpm) as average_resting_bmp
FROM 
    heart_rate_metrics
JOIN
    workouts ON heart_rate_metrics.workout_id  = workouts.workout_id

GROUP BY
    workouts.workout_type

ORDER BY 
     average_max_bpm DESC

--Heart rate metrics appear relatively consistent across workout types, suggesting that participants in this dataset train at similar cardiovascular intensity regardless of workout category.