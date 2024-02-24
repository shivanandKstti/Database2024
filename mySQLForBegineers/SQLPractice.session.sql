-- why should we learn about databases?
-- choosing a database system
    -- mysql
    -- postgreSQL
    -- microsoft SQL server
    -- oracle
    -- sqlite
-- how do we start using mySQl?
    -- we need a mysql server
    -- we need a way to connect to it --> EX:workbentch

CREATE DATABASE myDatabase;
CREATE DATABASE petFoods;

use petFoods
CREATE TABLE animal(
    name VARCHAR(50) NULL,
    species VARCHAR(50) NULL
)

select * from animal

INSERT INTO animal (name, species ) 
VALUES
('meowsalot', 'cat'),
('meowsalot', 'dog'),
('meowsalot1', 'cat');

SELECT * FROM animal
WHERE species = 'dog';

select name form FROM animal
where species = 'dog'

UPDATE animal set name = 'buddy Juniors'
where species = 'dog'

select * from animal
delete from animal 
where name = 'buddy Juniors'

select * from animal

-- what is PRIMARY KEY?
-- In SQL, a PRIMARY KEY is a unique identifier for each record
-- in a table. It is a column or a set of columns that uniquely
-- identifies a row in a database table. A table can have only
-- one PRIMARY KEY, which means that the values in the PRIMARY KEY
-- column(s) must be unique.

CREATE Table employee(
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15)
)

drop table animals

CREATE TABLE animals
(
    id INT PRIMARY KEY NOT NULL
    AUTO_INCREMENT,
    name VARCHAR
    (50) NULL,
    species VARCHAR
    (50) NULL,
    weight VARCHAR(100) NULL,
    birthdate DATE,
    email VARCHAR(200) NULL
)

INSERT INTO animals (name, species, weight, birthdate, email) 
VALUES
('Purrsloud', 'cat', '12', 2013-03-10, 'Purrsloud@gmail.com'),
('Barksalot', 'dog', '20', 2015-03-15, 'Barksalot@gmail.com'),
('Buddy', 'dog', '52', 2010-10-25, 'Buddy@gmail.com');

select * from animals

-- data types in sql?

create database dayTodayActivities

use dayTodayActivities

    CREATE TABLE activityDetais
    (
        activity_id INT PRIMARY KEY NOT NULL
        AUTO_INCREMENT,
    name VARCHAR
        (200) not NULL,
    description VARCHAR
        (200) not NULL,
    duration VARCHAR
        (100) not NULL,
    priority INT not NULL
);


drop table activityDetais

INSERT INTO activityDetais ( name, description, duration, priority  ) 
VALUES
('Shiva 29012024', 'Gym and freshup', '5AM to 7:30AM', 1),
('Shiva 29012024', 'Java study/ office work if required', '7:30AM to 11AM', 2),
('Shiva 29012024', 'office work / javascript if no work', '11AM to 9PM', 3),
('Shiva 29012024', 'Database', '9PM to 11PM', 4)

INSERT INTO activityDetais ( name, description, duration, priority  ) 
VALUES
('Shiva 30012024', 'Gym and freshup', '5AM to 7:30AM', 1),
('Shiva 30012024', 'Java study/ office work if required', '7:30AM to 11AM', 2),
('Shiva 30012024', 'office work / javascript if no work', '11AM to 9PM', 3),
('Shiva 30012024', 'Database', '9PM to 11PM', 4)

select * from activityDetais

use petfoods

CREATE TABLE products(
    id INT NOT null PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    priceusd DECIMAL(10,2) NOT NULL
)

SELECT * FROM products

INSERT INTO products ( name, priceusd ) 
VALUES
('Celery', '11.11');

--=============================================== Relationship between tables ======================================

CREATE TABLE orders(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date DATETIME NOT NULL,
    userid int NOT NULL
)

select * from orders

INSERT INTO orders ( `date`, `userid` ) 
VALUES
(now(), 1),
(now(), 2),
(now(), 3)

select * FROM orders

select orders.date, animals.name, animals.email from orders
JOIN animals on orders.userid = animals.id
where animals.species = 'cat'


--========== o2/24/2024 =======================================================================================
what is database?
- a collection of data stored in one place
- can be accessed by multiple users at the same time
- allows for easy retrieval and manipulation of data
- a database system is a collection of software that manages databases
database management system (DBMS):
- provides an interface between users and databases
- includes tools to create, manipulate, and retrieve data
- includes security measures to protect data from unauthorized access

types of databases:
- relational databases: store data in tables with relationships between records
- non-relational or NoSQL databases: store data in documents, key-value pairs, graphs, and column-oriented databases
- document databases: store data in documents like JSON or XML
- key-value stores: store data as key-value pairs, like a dictionary
- columnar databases: organize data into columns, like a spreadsheet
- graph databases: store data using nodes and edges, like a social network

SQL stands for Structured Query Language. It is used to communicate with a DBMS and perform operations on the database.

--=======================================================================================

