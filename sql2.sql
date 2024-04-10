-- use of where clause in sql


--create database name sqlcode
CREATE DATABASE SQLCODE;

--use database database_name
USE SQLCODE;

--create table name datatable
CREATE TABLE STDDATA(
  NAME VARCHAR(100),
  ID INT PRIMARY KEY, -- primary key is used for unique key itb can not be dupicate in the one table
  GENDER VARCHAR(100)
);

-- insert  your values in table
INSERT INTO STDDATA (
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

-- reterive all values table stddata
SELECT
  *
FROM
  STDDATA;

-- use if where clause where id is 2

SELECT
  *
FROM
  STDDATA
WHERE
  ID = 2;

-- if you get help from this please like and share my github👍

SELECT
  "bye😊" AS MESSAGE;