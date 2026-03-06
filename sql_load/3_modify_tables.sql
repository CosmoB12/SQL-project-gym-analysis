-- copying data to gym_raw
COPY gym_raw
FROM 'D:\SQL project gym analysis\csv_files\gym_members_exercise_tracking.csv'
WITH(FORMAT csv, HEADER true,DELIMITER ',', ENCODING 'UTF8');


-- inserting rows into member_data
INSERT INTO member_data(
    member_id,
    age,
    gender,
    weight_kg,
    height_m,
    bmi,
    fat_percentage
   
)
SELECT 
    member_id,
    age,
    gender,
    weight_kg,
    height_m,
    bmi,
    fat_percentage
   
    
FROM
    gym_raw

SELECT * FROM member_data
    


-- inserting into workouts table
INSERT INTO workouts(
    member_id,
    workout_type,
    session_duration_hours,
    calories_burned,
    experience_level

)

SELECT 
    member_id,
    workout_type,
    session_duration_hours,
    calories_burned,
    experience_level
FROM
    gym_raw

SELECT * FROM heart_rate_metrics



-- inserting into workouts table
INSERT INTO heart_rate_metrics(
    workout_id,
    max_bpm,
    avg_bpm,
    resting_bpm

)

SELECT 
    w.workout_id,
    max_bpm,
    avg_bpm,
    resting_bpm
   
FROM
    gym_raw

JOIN workouts AS w ON gym_raw.member_id = w.member_id

-- inserting into fitness_habits table

INSERT INTO fitness_habits(
    member_id,
    water_intake,
    workout_frequency

)
SELECT 
    member_id,
    water_intake_liters,
    workout_frequency_days
    

FROM gym_raw

SELECT * FROM fitness_habits