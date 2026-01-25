create database spotify;
use spotify;
select * from artist;

select name , popularity , dense_rank() over(order by popularity desc) as d_rank from artist;