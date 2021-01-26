CREATE DATABASE Agency4;
--creating tables--
CREATE TABLE Employee
(
F_name 			VARCHAR(20) 	NOT NULL,
M_name 			VARCHAR(20) 	NOT NULL,
L_name 			VARCHAR(20) 	NOT NULL,
Sex 			CHAR,
DOB				VARCHAR(10),
SSN				INT				NOT NULL,
Salary			INT				NOT NULL,
Email 			VARCHAR(50) 	NOT NULL,

CONSTRAINT emp_pk 
PRIMARY KEY (SSN),

);

CREATE TABLE Employee_address(
Essn		INT				NOT NULL,
Address		VARCHAR(50) 	NOT NULL,



CONSTRAINT Employee_address_pk 
PRIMARY KEY (Essn,Address),

CONSTRAINT Employee_address_fk
FOREIGN KEY (Essn) 
REFERENCES Employee(SSN)
);

CREATE TABLE Employee_tel_num(
Essn				INT				NOT NULL,
Tel_num				INT			 	NOT NULL,


CONSTRAINT Employee_tel_num_pk 
PRIMARY KEY (Essn,Tel_num),

CONSTRAINT Employee_tel_num_fk
FOREIGN KEY (Essn) 
REFERENCES Employee(SSN)
);

CREATE TABLE Guide(
Essn				INT				NOT NULL,
Num_of_languages	INT			 	NOT NULL,

CONSTRAINT Guide_pk 
PRIMARY KEY (Essn),

CONSTRAINT Employee_guide_fk
FOREIGN KEY (Essn) REFERENCES Employee(SSN)
);

CREATE TABLE Guide_languges(
Essn				INT				NOT NULL,
language			VARCHAR(50) 	NOT NULL,


CONSTRAINT Guide_languges_pk 
PRIMARY KEY (Essn,language),


CONSTRAINT guide_languages_fk
FOREIGN KEY (Essn) REFERENCES Guide(Essn)
);

Create Table Vehicle(
Vehicle_type				VARCHAR(20)		NOT NULL,
Num_of_seats				INT				NOT NULL,
Registration_plate_num		VARCHAR(20)		NOT NULL,

CONSTRAINT Vehicle_pk 
PRIMARY KEY (Registration_plate_num),


);



CREATE TABLE Driver(
Essn				INT				NOT NULL,
License_id			INT				NOT NULL,
Licence_type		VARCHAR(20)		NOT NULL,
vehicle_plate_num	VARCHAR(20)		NOT NULL,


CONSTRAINT Driver_pk 
PRIMARY KEY (Essn),

CONSTRAINT Employee_Driver_fk
FOREIGN KEY (vehicle_plate_num) REFERENCES Vehicle(Registration_plate_num)


);

--inserting records--

--employee--
	--guides--
INSERT INTO Employee(F_name,M_name,L_name,Sex,DOB,SSN,Salary,Email)
VALUES ('ali','mohamde','ali','m','1-1-1999','1615651','2100','alimohamed@mail.com');

INSERT INTO Employee(F_name,M_name,L_name,Sex,DOB,SSN,Salary,Email)
VALUES ('ahmed','mohamde','ali','m','5-5-1997','28564684','2000','ahmedmohamed@mail.com');

INSERT INTO Employee(F_name,M_name,L_name,Sex,DOB,SSN,Salary,Email)
VALUES ('alaa','ali','ahmed','f','17-6-2000','34685864','1900','alaaali@mail.com');

INSERT INTO Employee(F_name,M_name,L_name,Sex,DOB,SSN,Salary,Email)
VALUES ('marwa','seif','saar','f','19-9-1990','4265256','1800','marwaseif@mail.com');

INSERT INTO Employee(F_name,M_name,L_name,Sex,DOB,SSN,Salary,Email)
VALUES ('mohamed','mahmoud','ahmed','m','20-2-1980','51654864','2000','mohamedmahmoud@mail.com');
	
	--drivers--

INSERT INTO Employee(F_name,M_name,L_name,Sex,DOB,SSN,Salary,Email)
VALUES ('sara','ahmed','saad','f','18-4-1994','64654146','1900','marwaseif@mail.com');

INSERT INTO Employee(F_name,M_name,L_name,Sex,DOB,SSN,Salary,Email)
VALUES ('jotaro','jack','jostar','m','15-2-1970','7156454','1300','jotarojostar@mail.com');

INSERT INTO Employee(F_name,M_name,L_name,Sex,DOB,SSN,Salary,Email)
VALUES ('josef','jack','jostar','m','20-7-1974','8515651','1300','josefjostar@mail.com');

INSERT INTO Employee(F_name,M_name,L_name,Sex,DOB,SSN,Salary,Email)
VALUES ('jack','jack','sparrow','m','15-2-1980','9515151','1300','jacksparrow@mail.com');

INSERT INTO Employee(F_name,M_name,L_name,Sex,DOB,SSN,Salary,Email)
VALUES ('jolia','mohamed','micheal','f','25-6-1987','100000','1300','joliamicheal@mail.com');


--employee adress--
INSERT INTO Employee_address(Essn,Address)
VALUES (1615651,'15 salah st');

INSERT INTO Employee_address(Essn,Address)
VALUES (1615651,'20 sq elzamalek');

INSERT INTO Employee_address(Essn,Address)
VALUES (28564684,'21 jule st maadi,17 time st elzamalek');

INSERT INTO Employee_address(Essn,Address)
VALUES (28564684,'21 jule st maadi');

INSERT INTO Employee_address(Essn,Address)
VALUES (34685864,'17 time st elzamalek');

INSERT INTO Employee_address(Essn,Address)
VALUES (4265256,'10 smough st maadi');

INSERT INTO Employee_address(Essn,Address)
VALUES (51654864,'14 orniston st city-center');

INSERT INTO Employee_address(Essn,Address)
VALUES (64654146,'12 kapra st city-center');

INSERT INTO Employee_address(Essn,Address)
VALUES (7156454,'30 stray st suez');

INSERT INTO  Employee_address
VALUES (8515651,'16 kapra st city-center');

INSERT INTO  Employee_address
VALUES (9515151,'19 hollow st portsaid');

INSERT INTO  Employee_address
VALUES (100000,'15 lothric"s st salam');

--Employee_tel_num--

INSERT INTO Employee_tel_num
VALUES (1615651,01008121854);

INSERT INTO Employee_tel_num
VALUES (1615651,0111562651);

INSERT INTO Employee_tel_num
VALUES (28564684,01108121854);

INSERT INTO Employee_tel_num
VALUES (28564684,0101562651);

INSERT INTO Employee_tel_num
VALUES (34685864,0120811314);

INSERT INTO Employee_tel_num
VALUES (4265256,01000155800);

INSERT INTO Employee_tel_num
VALUES (51654864,01009055563);

INSERT INTO Employee_tel_num
VALUES (64654146,01002033349);

INSERT INTO Employee_tel_num
VALUES (7156454,01002244351);

INSERT INTO Employee_tel_num
VALUES (8515651,011556632);

INSERT INTO Employee_tel_num
VALUES (9515151,012244695);

INSERT INTO Employee_tel_num
VALUES (100000,0100573154);

--Guide--
INSERT INTO Guide
VALUES (1615651,2);

INSERT INTO Guide
VALUES (28564684,2);

INSERT INTO Guide
VALUES (34685864,1);

INSERT INTO Guide
VALUES (4265256,1);

INSERT INTO Guide
VALUES (51654864,3);

--guide languages--
INSERT INTO Guide_languges
VALUES (1615651,'english');

INSERT INTO Guide_languges
VALUES (1615651,'arabic');

INSERT INTO Guide_languges
VALUES (28564684,'english');

INSERT INTO Guide_languges
VALUES (28564684,'spanish');

INSERT INTO Guide_languges
VALUES (34685864,'italian');

INSERT INTO Guide_languges
VALUES (4265256,'english');

INSERT INTO Guide_languges
VALUES (51654864,'english');

INSERT INTO Guide_languges
VALUES (51654864,'russian');

INSERT INTO Guide_languges
VALUES (51654864,'german');



--Vehicle--
INSERT INTO Vehicle
VALUES ('tyota',8,1222);

INSERT INTO Vehicle
VALUES ('tyota',8,1223);

INSERT INTO Vehicle
VALUES ('tesla',20,1224);

INSERT INTO Vehicle
VALUES ('mercedes',20,1225);

INSERT INTO Vehicle
VALUES ('mercedes',24,1226);

--Driver--

INSERT INTO Driver
VALUES (64654146,12234,'mini bus',1222);

INSERT INTO Driver
VALUES (7156454,22234,'mini bus',1223);

INSERT INTO Driver
VALUES (8515651,32234,'bus',1224); 

INSERT INTO Driver
VALUES (9515151,42234,'bus',1225);

INSERT INTO Driver
VALUES (100000,52234,'bus',1226);


--queries--

--get the name and the salary of employees who has more salary than employees who work as drivers--
SELECT F_name,M_name,L_name,Salary
FROM Employee
WHERE Salary > ALL (SELECT Salary
					FROM Employee
					WHERE EXISTS (SELECT *
								  FROM Driver
								  WHERE Essn = Ssn)
				   );

--get the names of employees who work as drivers--

SELECT F_name, L_name,SSN
FROM Employee
WHERE EXISTS (SELECT *
			  FROM Driver
			  WHERE Essn = Ssn)ORDER BY L_name;--get the driver SSN ,the type of lisence they have and their car's plate number--SELECT Essn,Licence_type,Registration_plate_num
FROM Driver RIGHT OUTER JOIN Vehicle
ON Driver.vehicle_plate_num = Vehicle.Registration_plate_num;
--get the average ,minimum,maximum salary for employees who works as guides--

SELECT AVG(Salary) AS ' avg salary for guides ' , MIN(Salary)AS ' minimum salary for guides ', MAX(Salary)AS ' maximum salary for guides '
FROM Guide,Employee
WHERE SSN=Essn;


--get guides who speak more than two languages and males--

SELECT F_name,L_name,DOB,Num_of_languages,Salary
FROM Guide,Employee
Where SSN=Essn AND Num_of_languages>=2 AND Sex='m';








