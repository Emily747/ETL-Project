CREATE DATABASE Wine_Ratings_DB;
ALTER DATABASE Wine_Ratings_DB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

USE Wine_Ratings_DB;
CREATE TABLE state(
	stateId int Primary KEY auto_increment,
	country varchar(50),
    state varchar(50),
    GDP VARCHAR (50),
    countryId varchar(50)
    );
ALTER TABLE state CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE state CHANGE state state VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

SELECT * FROM state;
