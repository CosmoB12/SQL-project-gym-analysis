# Fitness Data Analysis
## Project Overview
This project analyzes a fitness dataset using SQL to explore patterns in workout performance and lifestyle habits. The goal is to understand how factors such as workout type, heart rate metrics, water intake, and workout frequency relate to workout outcomes.

The analysis was performed using PostgreSQL with a focus on data exploration, aggregation, and identifying trends across different fitness behaviors.

🔍SQL queries? check them out here: [project_analysis_sql](/project_analysis_sql/)

## Dataset Description
This project uses the from [Gym Members Exercise Dataset](https://www.kaggle.com/datasets/valakhorasani/gym-members-exercise-dataset) from kaggle. The original dataset was provided as a single CSV file containing various attributes related to gym members, their workout sessions, and lifestyle habits.. To improve organization and enable more efficient querying, the dataset was normalized and split into multiple relational tables using SQL. This structure reduces redundancy and allows for clearer relationships between member information, workout sessions, and health metrics.

#### Member_data
- Contains basic information about individuals in the dataset.
  - member_id
  - age
  - gender
  - weight
  - height
  - bmi
  - fat_percentage
#### Workouts
- Stores workout session details
  - workout type
  - calories burned
  - session duration
  - experience level
#### Heart Rate Metrics

- Includes heart rate measurements during workouts such as:
  - max BPM
  - average BPM
  - resting BPM
#### Fitness Habits

- Contains lifestyle variables including:
   - water intake
   - workout frequency
## Key Questions Investigated

1. What workout type burns the most calories?

2. Does BMI and body composition affect workout performance?

3. Do heart rate metrics vary across workout types?

4. Do lifestyle factors such as water intake influence workout outcomes?

5. Does experience level affect workout duration and calories burned?

## SQL Methodology

The analysis was performed using PostgreSQL.
To simplify analysis and visualization, SQL views were created for each research question.

#### Key SQL techniques used include:

- Table joins

- Aggregations (AVG, COUNT)

- Median calculation using PERCENTILE_CONT

- Bucketing using CASE

- Data grouping and ordering


## Analytical Views Created
#### Workout Performance

Analyzes average calories burned and session duration by workout type.

![Workout Performance](assets\view_1.png)

This helps identify which workout types burn the most calories.

#### BMI and Body Composition

Groups members into BMI ranges and examines their workout performance and body fat percentage.

![Workout Performance](assets\view_2.png)

Median values were used to reduce the influence of extreme outliers.

#### Heart Rate Metrics by Workout Type

Analyzes cardiovascular intensity across different workout types.

![Heart Rate Metrics](assets\view_3.png)

#### Water Intake

Buckets water intake levels and compares them with workout performance metrics.


![Water Intake levels](assets\view_5.png)
#### Experience level 

Examines how training experience influences workout duration and calories burned.

![Expeirence level](assets\view_4.png)

## Key Findings

#### Workout Type Performance

![Workout Type](assets\workout_performance.png)

Workout types show relatively similar cardiovascular intensity levels, although some workouts burn slightly more calories on average.

#### BMI and Body Composition

![performance by bmi](assets\avg_calories_bmi.png)

BMI alone does not appear to strongly determine workout performance. This may be due to BMI not accounting for muscle mass, which can distort body composition estimates.

#### Heart Rate Metrics

![Heart rate by workout type](assets\heart_rate_by_workout.png)
Heart rate metrics remain relatively consistent across workout types, suggesting that participants in the dataset train at similar cardiovascular intensity levels.

#### Lifestyle Factors

![Performance by water intake](assets\average_water_intake.png)

Members with higher water intake levels tend to burn more calories on average and have slightly longer workout sessions.

#### Experience Level

![Performance by experience level](assets\experience_level.png)

More experienced members generally train for longer durations and burn more calories per session.

## Tools Used

- PostgreSQL

- SQL

- Power BI

- Git

- GitHub