create database student_addiction_data;
use student_addiction_data;
select * from clean_data;

-- total students
select count(student_id) as total_stud from clean_data;

-- avg mental health score
select round(avg(mental_health_score),2) as avg_mental_health from clean_data;

-- avg daily usage hour 
select round(avg(avg_daily_usage_hours),2) as avg_hour from clean_data;

-- avg sleep hour per night
select round(avg(sleep_hours_per_night),2) as avg_sleep_hour from clean_data;

-- all over addiction rate
SELECT 
    (COUNT(CASE WHEN addicted_score >= 7 THEN 1 END) * 100.0) 
    / COUNT(*) AS addiction_rate
FROM clean_data;


--  gender wise most use platform by avg daily use hour 
select most_used_platform , gender , round(avg(avg_daily_usage_hours),2 ) as avg_hour from clean_data group by most_used_platform , gender
order by avg_hour desc;

-- gender wise  avg addiction base on academic level
select academic_level , gender , round(avg(addicted_score),2) as avg_addiction from clean_data group by academic_level , gender
order by avg_addiction desc;

--  avg daily usage hour base on academic level
select academic_level , round(avg(avg_daily_usage_hours),2) as avg_hour from clean_data group by academic_level;

-- gender wise avd addiction base on relationship status
select relationship_status ,gender, round(avg(addicted_score),2) as avg_addiction from clean_data group by relationship_status ,gender
order by avg_addiction;

-- gender wise avg daily usage hour ase on academic perform affect 
select affects_academic_performance ,gender ,  round(avg(avg_daily_usage_hours),2) as avg_hour from clean_data group by affects_academic_performance , gender;

-- country wise avg mental health
select country , round(avg(mental_health_score),2) as avg_mental_health from clean_data group by country
order by avg_mental_health desc;

