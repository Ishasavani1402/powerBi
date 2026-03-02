create database spotify;
use spotify;
select * from artist;
select count(artist_id) as total_artist from artist;
select name , popularity , dense_rank() over(order by popularity desc) as d_rank from artist;
select name , followers, dense_rank() over(order by followers desc) as d_rank from artist;
select count(main_genre) from artist;