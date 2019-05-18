create database Wine_Ratings;
use Wine_Ratings;

ALTER DATABASE Wine_Ratings CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

USE Wine_Ratings;
CREATE TABLE state(testerId
	stateId int Primary KEY auto_increment,
	country varchar(50),
    state varchar(50),
    GDP VARCHAR (50),
    countryId varchar(50)
    );
ALTER TABLE state CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE state CHANGE state state VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

SELECT * FROM state;

CREATE TABLE country (
    countryId INT PRIMARY KEY AUTO_INCREMENT,
    country VARCHAR(50),
    countryCode VARCHAR(2),
    GDP DECIMAL(10 , 2 ),
    POP INTEGER
)
;





CREATE table taster(
	tasterID int primary key auto_increment,
    taster_name VARCHAR (50),
    taster_twitter_handle VARCHAR (55));
    
create table Wine (
wineId integer primary KEY AUTO_INCREMENT,
title varchar (200),
variety varchar(200),
points integer,
price DECIMAL(10 , 2 ),
countryId integer ,
testerId integer 
);
ALTER TABLE Wine CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
 ALTER TABLE Wine CHANGE Wine title VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
