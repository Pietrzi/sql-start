CREATE DATABASE soap_store;

DROP DATABASE hello_world_db;


USE dog_walking_app;
 
--SELECT database();

-- create table

CREATE TABLE tablename
  (
    column_name data_type,
    column_name data_type
  );


CREATE TABLE cats
  (
    name VARCHAR(100), -- string under 100 signes
    age INT
  );

--SHOW TABLES;
 
--SHOW COLUMNS FROM tablename;
 
--DESC tablename;



CREATE TABLE pastries
  (
    name VARCHAR(50),
    quantity INT
  );
 
--SHOW TABLES;
 
--DESC pastries;
 
DROP TABLE pastries;


--Inserting Data

--The "formula":

INSERT INTO table_name(column_name) VALUES (data);

--For example:


SELECT * FROM cats;

--multiple
INSERT INTO table_name 
            (column_name, column_name) 
VALUES      (value, value), 
            (value, value), 
            (value, value);



CREATE TABLE people
  (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
  );
INSERT INTO people(first_name, last_name, age)
VALUES ('Tina', 'Belcher', 13);
INSERT INTO people(age, last_name, first_name)
VALUES (42, 'Belcher', 'Bob');
INSERT INTO people(first_name, last_name, age)
VALUES('Linda', 'Belcher', 45)
  ,('Phillip', 'Frond', 38)
  ,('Calvin', 'Fischoeder', 70);
DROP TABLE people; 

SELECT * FROM people; 

--show tables; 