--Does your bmi and body composition affect workout performance
CREATE VIEW bmi_performance AS
SELECT
    CASE
        WHEN bmi <18.5 THEN 'Underweight'
        WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normalweight'
        WHEN bmi BETWEEN 25.0 AND 29.9 THEN 'Overweight'
        WHEN bmi BETWEEN 30.0 AND 34.9 THEN 'Obesity Class I'
        WHEN bmi BETWEEN 35.0 AND 39.9 THEN 'Obesity Class II'
        WHEN bmi >40 THEN  'Obseity Class III'
        ELSE 'No data'
    END AS bmi_ranges,
    COUNT(*) AS members,
    PERCENTILE_CONT(0.5) 
    WITHIN GROUP (ORDER BY fat_percentage) AS average_body_fat_percentage,  
    PERCENTILE_CONT(0.5) 
    WITHIN GROUP (ORDER BY calories_burned) AS average_calories_burned,
    AVG(session_duration_hours) AS average_session_duration
FROM
    member_data
JOIN workouts ON member_data.member_id = workouts.member_id
GROUP BY
    bmi_ranges
ORDER BY
    average_calories_burned DESC
    
--BMI in this dataset is not perfectly correlated with body fat, maybe due to muscle mass.
--BMI alone does not strongly determine calories burned — session length and possibly workout type seem more influential.

