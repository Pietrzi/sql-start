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


--MySQL Warnings Code
--DESC cats; 

--Try Inserting a cat with a super long name:

INSERT INTO cats(name, age)
VALUES('This is some text blah blah blah blah blah text text text something about cats lalalalal meowwwwwwwwwww', 10);
--Then view the warning:

--SHOW WARNINGS; 

--Try inserting a cat with incorrect data types:

INSERT INTO cats(name, age) VALUES('Lima', 'dsfasdfdas'); 

--Then view the warning:

--SHOW WARNINGS; 



--NULL and NOT NULL Code
--Try inserting a cat without an age:

INSERT INTO cats(name) VALUES('Alabama'); 

SELECT * FROM cats; 

--Try inserting a nameless and ageless cat:

--INSERT INTO cats() VALUES(); --



--CODE: Setting Default Values 
--Define a table with a DEFAULT name specified:

CREATE TABLE cats3
  (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
  );
--Notice the change when you describe the table:

--DESC cats3; 

--Insert a cat without a name:

INSERT INTO cats3(age) VALUES(13); 

--Or a nameless, ageless cat:

--INSERT INTO cats3() VALUES(); --

--Combine NOT NULL and DEFAULT:

CREATE TABLE cats4
  (
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
    age INT NOT NULL DEFAULT 99
  );
  
--Notice The Difference:

--INSERT INTO cats() VALUES();--
 
SELECT * FROM cats;
 
--INSERT INTO cats3() VALUES();--
 
SELECT * FROM cats3;
 
INSERT INTO cats3(name, age) VALUES('Montana', NULL);
 
SELECT * FROM cats3;
 
INSERT INTO cats4(name, age) VALUES('Cali', NULL);



--CODE: Primary Keys
--Define a table with a PRIMARY KEY constraint:

CREATE TABLE unique_cats
  (
    cat_id INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
  );
--DESC unique_cats; --

--Insert some new cats:

INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'Fred', 23);
 
INSERT INTO unique_cats(cat_id, name, age) VALUES(2, 'Louise', 3);
 
INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'James', 3);
--Notice what happens:

SELECT * FROM unique_cats; 

--Adding in AUTO_INCREMENT:

CREATE TABLE unique_cats2 (
    --cat_id INT NOT NULL AUTO_INCREMENT,--
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);
--INSERT a couple new cats:

INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
--Notice the difference:

SELECT * FROM unique_cats2; 



--Table Constraints Exercise Solution
--Defining The employees table:

CREATE TABLE employees (
    --id INT AUTO_INCREMENT NOT NULL,--
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);