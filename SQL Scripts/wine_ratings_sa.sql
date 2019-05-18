CREATE DATABASE Wine_Ratings_DB;

USE Wine_Ratings_DB;

CREATE TABLE state(
	stateId int Primary KEY auto_increment,
	country varchar(50),
    state varchar(50),
    GDP int,
    countryId varchar(50)
    )
    