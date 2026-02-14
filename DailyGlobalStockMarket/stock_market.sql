create database global_stock_market;
use global_stock_market;
select * from cleandata_;

-- intraday volatility
ALTER TABLE cleandata_ 
ADD COLUMN intraday_volatility DECIMAL(10,4) GENERATED ALWAYS AS (high - low) STORED;

-- market sentimate
select close , open,
case
when close > open then "Bullish"
when close < open then "Bearish"
else "Neutral" end as market_sentimate from cleandata_;

-- Avg opening price
select round(avg(open),2) as avg_opening_price from cleandata_;

-- Avg close price
select round(avg(close),2) as avg_close_price from cleandata_;

-- positive days
SELECT 
    (sum(daily_change_percent > 0) / COUNT(*) * 100) AS positive_days_percent
FROM CleanData_;

-- negetive days
SELECT 
    (SUM(daily_change_percent < 0) / COUNT(*) * 100) AS negetive_days_percent
FROM CleanData_;

-- Avg daily returns
select round(avg(daily_change_percent),2) as avg_daily_return from cleandata_;

-- totaldata
select count(*) from cleandata_;

-- market volatility
select round(stddev_pop(daily_change_percent),2) as market_volatility from cleandata_;

-- total trending volume 
select (sum(volume)) as total_tending_volume from cleandata_;

-- country risk score
select round(avg(abs(daily_change_percent)),2) as risk_score from cleandata_;

-- market volatility by month name
select monthname(date) , round(stddev_pop(daily_change_percent),2) as market_volatility 
from cleandata_ group by monthname(date);

-- market volatility by year
select year(date) , round(stddev_pop(daily_change_percent),2) as market_volatility 
from cleandata_ group by year(date);

-- intraday volatality by index
select index_name , avg(intraday_volatility) as volatility from cleandata_ group by index_name;

-- intraday volatility by weekday
select dayname(date) , avg(intraday_volatility) as volatility from cleandata_ group by dayofweek(date),dayname(date) 
order by dayofweek(date);

-- frequency of bullish vs bearish behaviour
select year(date) , 
case
when close > open then "Bullish"
when close < open then "Bearish"
else "Neutral" end as market_sentimate,
count((dayofweek(date))) as count_day from cleandata_ group by 
year(date), market_sentimate;

-- market movement over a time
select year(date) , index_name,round(avg(close),2) as avg_close_price from cleandata_ group by year(date), index_name;

-- country wise risk score
select country , 
round(avg(abs(daily_change_percent)),2) as risk_score 
from cleandata_ group by country order by risk_score desc;

-- daily return by country
select  country , round(avg(daily_change_percent),2) as avg_daily_return from cleandata_ group by country;

-- dai;y return by index
select index_name , round(avg(daily_change_percent),2) as avg_daily_return from cleandata_ group by index_name order by avg_daily_return desc;