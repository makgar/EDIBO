CREATE TABLE IF NOT EXISTS Persons (
	ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    First_Name varchar(20) NOT NULL,
    Last_Name varchar(20) NOT NULL,
    Personal_No varchar(12) NOT NULL UNIQUE,
    Region_ID int,
    City_ID int,
    Street_ID int,
    House_ID int,
    House_Suffix varchar(2),
    Apt_ID int
);

CREATE TABLE IF NOT EXISTS Citites (
	ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Name varchar(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Streets (
	ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Name varchar(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS House_Numbers (
	Number int NOT NULL PRIMARY KEY -- ,
    -- Suffix varchar(2)
);

CREATE TABLE IF NOT EXISTS House_Number_suffixes (
	-- ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Suffix varchar(2) NOT NULL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Apartment_Numbers (
	Number int NOT NULL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Regions (
	ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Name varchar(100) NOT NULL
);

-- drop table Persons;
-- show create table Persons;
