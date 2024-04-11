-- simple problem question in sql

-- create database and table name student insert max 5 values
-- write a sql query to retrive student having marks 75

-- Q1 (1) create database name (student_db)

CREATE DATABASE STUDENT_DB;

USE STUDENT_DB;

-- Q2 (2) create table name student

CREATE TABLE STUDENT(
  NAME VARCHAR(60),
  ID INT PRIMARY KEY,
  MARKS FLOAT
);

-- Q1 (3) insert max 5 values
INSERT INTO STUDENT (
  NAME,
  ID,
  MARKS
) VALUES (
  'vansh',
  1,
  75
),
(
  'navraj',
  2,
  75
),
(
  'madhav',
  3,
  80
),
(
  'harish',
  4,
  85
);

-- Q2 retrive students having marks 75

SELECT
  *
FROM
  STUDENT
WHERE
  MARKS = 75;

=======

-- simple problem question in sql

-- create database and table name student insert max 5 values
-- write a sql query to retrive student having marks 75

-- Q1 (1) create database name (student_db)

CREATE DATABASE STUDENT_DB;

USE STUDENT_DB;

-- Q2 (2) create table name student

CREATE TABLE STUDENT(
  NAME VARCHAR(60),
  ID INT PRIMARY KEY,
  MARKS FLOAT
);

-- Q1 (3) insert max 5 values
INSERT INTO STUDENT (
  NAME,
  ID,
  MARKS
) VALUES (
  'vansh',
  1,
  75
),
(
  'navraj',
  2,
  75
),
(
  'madhav',
  3,
  80
),
(
  'harish',
  4,
  85
);

-- Q2 retrive students having marks 75

SELECT
  *
FROM
  STUDENT
WHERE
  MARKS = 75;


-- outpit is vansh and navraj
