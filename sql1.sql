--how to create table and reterive its data from table


-- first select database
USE VANSH20;

-- create table  and its name your choice(name)
CREATE TABLE DATA(
  NAME VARCHAR(100),
  ID INT PRIMARY KEY, -- primary key is used for unique key itb can not be dupicate in the one table
  GENDER VARCHAR(100)
);

--inser values in table name data
INSERT INTO DATA (
  NAME,
  ID,
  GENDER
) VALUES (
  'vans',
  1,
  'male'
),
(
  'harish',
  2,
  'male'
),
(
  'diksha',
  3,
  'female'
),
(
  'navraj',
  4,
  'male'
),
(
  'madhav',
  5,
  'male'
);

-- query to reterive all data of of table name (data)

SELECT
  *
FROM
  DATA;

-- if you get help from this please like and share my github👍

SELECT
  "bye😊" AS MESSAGE;