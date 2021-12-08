CREATE DATABASE Vacdbslogin;
USE Vacdbslogin;
CREATE table record(
username varchar(150) PRIMARY KEY,
passwrd varchar(150));

INSERT INTO record 
VALUES ('user1', '123456');
 
select * from record;






