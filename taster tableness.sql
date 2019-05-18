create database Wine_Ratings;

USE Wine_Ratings;
drop table taster;
CREATE table taster(
	tasterID int primary key auto_increment,
    taster_name VARCHAR (50),
    taster_twitter_handle VARCHAR (55));
    
select * from taster;