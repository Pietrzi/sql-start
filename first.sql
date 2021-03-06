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


INSERT INTO cats(name, age) VALUES('Taco', 14);


--CREATE TABLE cats 
  --( 
    --  cat_id INT NOT NULL AUTO_INCREMENT, 
    --  name   VARCHAR(100), 
    --  breed  VARCHAR(100), 
    --  age    INT, 
    --  PRIMARY KEY (cat_id) 
  --); 



--Various Simple SELECT statements:
SELECT * FROM cats; 

SELECT name FROM cats; 

SELECT age FROM cats; 

SELECT cat_id FROM cats; 

SELECT name, age FROM cats; 

SELECT cat_id, name, age FROM cats; 

SELECT age, breed, name, cat_id FROM cats; 

SELECT cat_id, name, age, breed FROM cats; 


--CODE: Introduction to WHERE
--Select by age:

SELECT * FROM cats WHERE age=4; 

--Select by name:

SELECT * FROM cats WHERE name='Egg';


SELECT cat_id FROM cats; 

SELECT name, breed FROM cats; 

SELECT name, age FROM cats WHERE breed='Tabby'; 

SELECT cat_id, age FROM cats WHERE cat_id=age; 

SELECT * FROM cats WHERE cat_id=age; 



--CODE: Introduction to Aliases

SELECT cat_id AS id, name FROM cats;
 
SELECT name AS 'cat name', breed AS 'kitty breed' FROM cats;


SELECT * FROM cats WHERE name='Jackson';
 
UPDATE cats SET name='Jack' WHERE name='Jackson';
 
SELECT * FROM cats WHERE name='Jackson';
 
SELECT * FROM cats WHERE name='Jack';
 
SELECT * FROM cats WHERE name='Ringo';
 
UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';
 
SELECT * FROM cats WHERE name='Ringo';
 
SELECT * FROM cats;
 
SELECT * FROM cats WHERE breed='Maine Coon';
 
UPDATE cats SET age=12 WHERE breed='Maine Coon';
 
SELECT * FROM cats WHERE breed='Maine Coon';

--delete 

DELETE FROM cats WHERE name='Egg';
 
SELECT * FROM cats;
 
SELECT * FROM cats WHERE name='egg';
 
DELETE FROM cats WHERE name='egg';
 
SELECT * FROM cats;
 
DELETE FROM cats;

----------------------
SELECT * FROM cats WHERE age=4;
 
DELETE FROM cats WHERE age=4;
 
SELECT * FROM cats WHERE age=4;
 
SELECT * FROM cats;
 
SELECT *  FROM cats WHERE cat_id=age;
 
DELETE FROM cats WHERE cat_id=age;
 
DELETE FROM cats;
 
SELECT * FROM cats;




CREATE DATABASE shirts_db;
 
use shirts_db;
 
SELECT database();
 
CREATE TABLE shirts
  (
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(100),
    last_worn INT,
    PRIMARY KEY(shirt_id)
  );
 
DESC shirts;
 
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);
 
SELECT * FROM shirts;
 
INSERT INTO shirts(color, article, shirt_size, last_worn) 
VALUES('purple', 'polo shirt', 'medium', 50);
 
SELECT * FROM shirts;


SELECT article, color FROM shirts;
 
SELECT * FROM shirts WHERE shirt_size='M';
 
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';


SELECT * FROM shirts WHERE article='polo shirt';
 
UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';
 
SELECT * FROM shirts WHERE article='polo shirt';
 
SELECT * FROM shirts;
 
SELECT * FROM shirts WHERE last_worn=15;
 
UPDATE shirts SET last_worn=0 WHERE last_worn=15;
 
SELECT * FROM shirts WHERE last_worn=15;
 
SELECT * FROM shirts WHERE last_worn=0;
 
SELECT * FROM shirts WHERE color='white';
 
UPDATE shirts SET color='off white', shirt_size='XS' WHERE color='white';
 
SELECT * FROM shirts WHERE color='white';
 
SELECT * FROM shirts WHERE color='off white';
 
SELECT * FROM shirts;


SELECT * FROM shirts;
 
SELECT * FROM shirts WHERE last_worn=200;
 
DELETE FROM shirts WHERE last_worn=200;
 
SELECT * FROM shirts WHERE article='tank top';
 
DELETE FROM shirts WHERE article='tank top';
 
SELECT * FROM shirts WHERE article='tank top';
 
SELECT * FROM shirts;
 
DELETE FROM shirts;
 
SELECT * FROM shirts;
 
DROP TABLE shirts;
 
show tables;
 
DESC shirts;