create database project1;

CREATE TABLE Customer(
ID			INT				NOT NULL,
Name		VARCHAR(50)		NOT NULL,
PhoneNumber VARCHAR(20),
Active		VARCHAR(50),
Adress		VARCHAR(50),
Email		VARCHAR(50),

CONSTRAINT Customer_pk
PRIMARY KEY (ID),

)

CREATE TABLE Admin(
ID			INT				NOT NULL,
Name		VARCHAR(50)		NOT NULL,
PhoneNumber VARCHAR(20),
Email		VARCHAR(50),

CONSTRAINT Admin_pk
PRIMARY KEY (ID),

);

CREATE TABLE Product(
ID			INT				NOT NULL,
Name		VARCHAR(50)		NOT NULL,
Quantity	INT				NOT NULL,
Price		DECIMAL			NOT NULL,

CONSTRAINT Product_pk
PRIMARY KEY (ID),

);

CREATE TABLE Request(
ID			INT				NOT NULL,
ProductID	INT				NOT NULL,
Quantity	INT				NOT NULL,
Price		DECIMAL			NOT NULL,
CustomerID	INT				NOT NULL,

CONSTRAINT Request_pk
PRIMARY KEY (ID),

CONSTRAINT Request_Product_fk
FOREIGN KEY (ProductID) REFERENCES Product (ID),

CONSTRAINT Request_Customer_fk
FOREIGN KEY (CustomerID) REFERENCES Customer (ID)

);

CREATE TABLE Logs(
ID			INT				NOT NULL,
Time		TIME			NOT NULL,
Login		VARCHAR(50)		NOT NULL,
CustomerID	INT				NOT NULL,
RequestID	INT				NOT NULL,

CONSTRAINT Logs_pk
PRIMARY KEY (ID),

CONSTRAINT Logs_Customer_fk
FOREIGN KEY (CustomerID) REFERENCES Customer (ID),

CONSTRAINT Logs_Request_fk
FOREIGN KEY (RequestID) REFERENCES Request (ID)

);

