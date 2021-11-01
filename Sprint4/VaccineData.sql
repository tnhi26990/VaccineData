CREATE DATABASE VaccineData;
use VaccineData;
CREATE TABLE administration (
  Administration_name varchar(30) NOT NULL,
  Street1 varchar(50) NOT NULL,
  Street2 varchar(50) DEFAULT NULL,
  City char(1) NOT NULL,
  State char(1) NOT NULL,
  Zip_Code int(11) NOT NULL
);

select * from administration;

CREATE TABLE insurance (
  Insurance_holder char(20) DEFAULT NULL,
  Insurer char(20) DEFAULT NULL,
  Group_Individual_ID_number int(11) DEFAULT NULL
);

select * from insurance;

CREATE TABLE patient (
  Record_Id int(11) NOT NULL AUTO_INCREMENT,
  First_name varchar(30) NOT NULL,
  Middle_name varchar(30) DEFAULT NULL,
  Last_name varchar(30) NOT NULL,
  Birth_Date date NOT NULL,
  Street1 varchar(150) NOT NULL,
  Street2 varchar(150) DEFAULT NULL,
  City varchar(50) NOT NULL,
  State char(2) NOT NULL,
  Zip_Code int(11) NOT NULL,
  Gender char(25) NOT NULL,
  Race varchar(50) NOT NULL,
  Ethnicity varchar(150) NOT NULL,
  PRIMARY KEY (Record_Id)
);


INSERT INTO patient VALUES (1,'Maria','M.','June','2001-12-31','7638 Clayton Road','None','Saint Louis','MO',64781,'Female','White','Not Hispanic or Latino');
INSERT INTO patient VALUES (2,'John','None','Smith','1999-05-06','1290 Grant Drive','None','Saint Louis','MO',65290,'Male','White','Not Hispanic or Latino');
INSERT INTO patient VALUES (3,'Catherine','L.','Burge','1996-04-03','5681 Grand Blvd','None','Saint Louis','MO',64781,'Female','White','Not Hispanic or Latino');
INSERT INTO patient VALUES (4,'Michael','None','Brown','1997-09-05','1236 Grant Dr','None','Saint Louis','MO',63901,'Male','White','Not Hispanic or Latino');
INSERT INTO patient VALUES (5,'Michael','M.','Davis','2000-12-21','3489 Olive Blvd','None','Saint Louis','MO',65176,'Male','White','Not Hispanic or Latino');

SELECT * FROM patient;

CREATE TABLE provider (
  Provider_Id int(11) NOT NULL,
  First_name varchar(30) NOT NULL,
  Middle_name varchar(30) DEFAULT NULL,
  Last_name varchar(30) NOT NULL,
  Birth_Date date NOT NULL,
  Street1 varchar(50) NOT NULL,
  Street2 varchar(50) DEFAULT NULL,
  City char(1) NOT NULL,
  State char(1) NOT NULL,
  Zip_Code int(11) NOT NULL,
  PRIMARY KEY (Provider_Id)
);

select * from provider;


CREATE TABLE vaccination (
  Vaccine_Type varchar(20) DEFAULT NULL,
  CVX_code varchar(10) DEFAULT NULL,
  Manufacturer char(20) DEFAULT NULL,
  Lot_Number char(12) NOT NULL,
  Expiration_Date date NOT NULL,
  Dose_Number char(30) NOT NULL,
  Administration_Site varchar(20) DEFAULT NULL,
  Date_Administered date NOT NULL,
  Number_of_Dose_Wasted char(10) DEFAULT NULL,
  Administration_Route varchar(30) DEFAULT NULL,
  Missed_Appointment char(20) NOT NULL,
  Comorbidity char(20) NOT NULL,
  Refused_Vaccination char(20) NOT NULL,
  Vaccinator varchar(30) DEFAULT NULL,
  Received_EUA_Fact_Sheet_for_Recipients char(20) DEFAULT NULL,
  PRIMARY KEY (Lot_Number)
);

select * from vaccination;



