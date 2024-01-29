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
    (50) NULL
)

INSERT INTO animals (name, species) 
VALUES
('Purrsloud', 'cat'),
('Barksalot', 'dog'),
('Buddy', 'dog');

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

