CREATE TABLE member_data(
    member_id SERIAL PRIMARY KEY,
    age INT,
    gender TEXT,
    weight_kg NUMERIC,
    height_m NUMERIC,
    bmi NUMERIC,
    fat_percentage NUMERIC
);




CREATE TABLE workouts(
    workout_id SERIAL PRIMARY KEY,
    member_id INT,
    workout_type TEXT,
    session_duration_hours NUMERIC,
    calories_burned NUMERIC,
    experience_level INT,
    FOREIGN KEY (member_id) REFERENCES member_data (member_id)
);




CREATE TABLE heart_rate_metrics(
    heart_rate_id SERIAL PRIMARY KEY,
    workout_id INT,
    max_bpm INT,
    avg_bpm INT,
    resting_bpm INT,
    FOREIGN KEY (workout_id) REFERENCES workouts (workout_id)
);

CREATE TABLE fitness_habits(
    habits_id SERIAL PRIMARY KEY,
    member_id INT,
    water_intake NUMERIC,
    workout_frequency INT,
    FOREIGN key (member_id) REFERENCES member_data (member_id)
);

