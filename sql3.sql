-- how to add new column in sql without changing in orginal -- Drop a table

USE STUDENT_DB;

CREATE TABLE ORDERS(
  ORDER_ID INT PRIMARY KEY,
  CUST_NAME VARCHAR(100),
  LOCATION VARCHAR(100)
);

INSERT INTO ORDERS(
  ORDER_ID,
  CUST_NAME,
  LOCATION
) VALUES(
  1,
  'vansh',
  'chd'
),
(
  2,
  'navraj',
  'chd'
),
(
  3,
  'harish',
  'chd'
);
-- Adding new column for delivary name DELETE
ALTER TABLE ORDERS add column del_name VARCHAR(100);

