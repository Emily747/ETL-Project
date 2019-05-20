create database Wine_Ratings;
use Wine_Ratings;

ALTER DATABASE Wine_Ratings CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

CREATE TABLE country (
    countryId INT PRIMARY KEY AUTO_INCREMENT,
    country VARCHAR(50),
    countryCode Varchar(2),
    GDP DECIMAL(10 , 2 ),
    POP INTEGER
)
;
CREATE TABLE state(
	stateId int Primary KEY auto_increment,
	state varchar(50),
    GDP VARCHAR (50),
    countryId int
    );
ALTER TABLE state CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE state CHANGE state state VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


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
stateId integer references state(stateId),
testerId integer references taster(tasterId)
);
ALTER TABLE Wine CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE Wine CHANGE title wine VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
 
 
 
 
ALTER TABLE wine
ADD INDEX taster_id (testerId ASC);
;
ALTER TABLE wine
ADD CONSTRAINT taster
  FOREIGN KEY (testerId)
  REFERENCES taster(tasterID);
  
ALTER TABLE wine
ADD CONSTRAINT state
  FOREIGN KEY (stateId)
  REFERENCES state(stateID);
  
  
  ALTER TABLE state
ADD INDEX country_Id (CountryId ASC);
;
ALTER TABLE state
ADD CONSTRAINT country
  FOREIGN KEY (countryId)
  REFERENCES country(countryId);

