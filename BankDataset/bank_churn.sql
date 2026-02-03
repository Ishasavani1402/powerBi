create database bank_chunk;
use bank_chunk;
select * from clean_data;

-- age group
select age , 
case 
when age < 30 then"under 30"
when age >= 30 and age < 45 then "30-44"
when age >=45 and age < 60 then "45-60"
else "above 60"
end as age_group from clean_data;

-- balance band
select balance, 
case
when balance = 0 then "zero balance"
when balance > 0 and balance <= 50000 then "0–50K"
when balance > 50000 and balance <= 100000 then "50k-100k"
when balance > 100000 and balance <= 150000 then "100k-150k"
else "150k+"
end as balance_band from clean_data;

-- avg age
select avg(age) as avg_age from clean_data;

-- total customer
select distinct count(customerid) as total_cust from clean_data;

-- churn customer
select distinct count(exited) as churn_cust from clean_data where exited = 1;

-- retain customer
select distinct count(exited) as retain_cust from clean_data where exited = 0;

-- avg balance
select avg(balance) as avg_balance from clean_data;

-- churn rate
SELECT
    CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE COUNT(CASE WHEN exited = 1 THEN 1 END) * 100.0 / COUNT(*)
    END AS churn_rate
FROM clean_data;

-- avg credit score
select avg(creditscore) as avg_credit from clean_data;


-- credit score by have credit card or not
select hascrcard , sum(creditscore) as credit_score from clean_data group by hascrcard;

-- gender wise churn customer by geography(city)
select gender , geography , count(exited) as churn_customer from clean_data where exited = 1 group by gender , geography
order by geography , gender;

-- gender wise churn rate by age group
select gender ,case 
when age < 30 then"under 30"
when age >= 30 and age < 45 then "30-44"
when age >=45 and age < 60 then "45-60"
else "above 60"
end as age_group , CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE COUNT(CASE WHEN exited = 1 THEN 1 END) * 100.0 / COUNT(*)
    END AS churn_rate from clean_data group by gender , age_group order by age_group , gender;
   
-- gender wise avg estimated salary by age group
select case 
when age < 30 then"under 30"
when age >= 30 and age < 45 then "30-44"
when age >=45 and age < 60 then "45-60"
else "above 60"
end as age_group ,gender ,  round(avg(estimatedsalary),2) as avg_salary from clean_data group by age_group ,gender
order by age_group , gender;

-- gender wise churn rate by balance band
select case
when balance = 0 then "zero balance"
when balance > 0 and balance <= 50000 then "0–50K"
when balance > 50000 and balance <= 100000 then "50k-100k"
when balance > 100000 and balance <= 150000 then "100k-150k"
else "150k+"
end as balance_band , gender ,
 CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE COUNT(CASE WHEN exited = 1 THEN 1 END) * 100.0 / COUNT(*)
    END AS churn_rate from clean_data 
    group by balance_band , gender
    order by balance_band , gender;
    
-- Avg balance and Average of estimated salary by age group     
select 
case 
when age < 30 then"under 30"
when age >= 30 and age < 45 then "30-44"
when age >=45 and age < 60 then "45-60"
else "above 60"
end as age_group , round(avg(balance),2) as avg_balance , 
round(avg(estimatedsalary),2) avg_salary from clean_data group by age_group;

-- isactive member and churn rate by age group
select case 
when age < 30 then"under 30"
when age >= 30 and age < 45 then "30-44"
when age >=45 and age < 60 then "45-60"
else "above 60"
end as age_group , sum(isactivemember) as _active_memer ,  
 CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE COUNT(CASE WHEN exited = 1 THEN 1 END) * 100.0 / COUNT(*)
    END AS churn_rate from clean_data group by age_group;