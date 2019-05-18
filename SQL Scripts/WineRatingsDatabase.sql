create database Wine_Ratings;
use Wine_Ratings;

CREATE TABLE country (
    countryId INT PRIMARY KEY AUTO_INCREMENT,
    country VARCHAR(50),
    countryCode VARCHAR(2),
    GDP DECIMAL(10 , 2 ),
    POP INTEGER
)