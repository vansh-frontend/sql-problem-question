-- 1. Construct a DQL query to retrieve the names of all employees whose ages fall between 25 and 35 years old.
-- 2. Utilize the IN operator to retrieve all orders placed by customers with IDs 101, 105, and 110.
-- 3. Write a query using the LIKE operator to retrieve all product names that start with the letter 'S'.
-- 4. Create a GROUP BY query to calculate the total sales amount for each product category in the "Orders" table.
-- 5. Write a query that uses a HAVING clause to retrieve the average salary of departments with more than five employees.
-- 6. Implement a query that uses the DISTINCT keyword to retrieve unique values of the "Product_Name" column from the "Products" table.
-- 7. Create a query that utilizes the SUM(), COUNT(), AVG() function to calculate the total sales amount from the "Sales" table.
-- 8. Create a query that performs an INNER JOIN between the "Orders" and "Customers" tables to retrieve orders along with customer information.
-- 9. Implement a query that utilizes a subquery to retrieve the names of all employees who work in departments with more than 50 employees
-- 10. How would you create a view named "HighSales" that displays all orders with a total amount greater than $1000 from the "Orders" table?



CREATE DATABASE SQLEXP;

USE SQLEXP;

-- Create tables
CREATE TABLE EMPLOYEES (
  EMPLOYEEID INT PRIMARY KEY,
  NAME VARCHAR(100),
  AGE INT
);

CREATE TABLE ORDERS (
  ORDERID INT PRIMARY KEY,
  CUSTOMERID INT,
  PRODUCTNAME VARCHAR(100),
  AMOUNT DECIMAL(10, 2)
);

CREATE TABLE CUSTOMERS (
  CUSTOMERID INT PRIMARY KEY,
  CUSTOMERNAME VARCHAR(100)
);

-- Insert sample data into tables
INSERT INTO EMPLOYEES (
  EMPLOYEEID,
  NAME,
  AGE
) VALUES (
  1,
  'John',
  30
),
(
  2,
  'Alice',
  25
),
(
  3,
  'Bob',
  35
),
(
  4,
  'Carol',
  40
),
(
  5,
  'David',
  28
),
(
  6,
  'Emma',
  32
);

INSERT INTO CUSTOMERS (
  CUSTOMERID,
  CUSTOMERNAME
) VALUES (
  101,
  'Customer 1'
),
(
  105,
  'Customer 2'
),
(
  110,
  'Customer 3'
),
(
  115,
  'Customer 4'
);

INSERT INTO ORDERS (
  ORDERID,
  CUSTOMERID,
  PRODUCTNAME,
  AMOUNT
) VALUES (
  1,
  101,
  'Product A',
  150.50
),
(
  2,
  105,
  'Product B',
  200.25
),
(
  3,
  110,
  'Product C',
  300.75
),
(
  4,
  115,
  'Product D',
  100.00
),
(
  5,
  101,
  'Product E',
  180.00
),
(
  6,
  110,
  'Product F',
  120.50
),
(
  7,
  105,
  'Product G',
  250.00
),
(
  8,
  101,
  'Product H',
  320.25
);

-- Q1 Retrieve names of employees aged between 25 and 35
SELECT
  NAME
FROM
  EMPLOYEES
WHERE
  AGE BETWEEN 25 AND 35;

-- Q2 Retrieve orders placed by customers with IDs 101, 105, and 110
SELECT
  *
FROM
  ORDERS
WHERE
  CUSTOMERID IN (101, 105, 110);

-- Q3 Retrieve product names starting with the letter 'S'
SELECT
  PRODUCTNAME
FROM
  ORDERS
WHERE
  PRODUCTNAME LIKE 'S%';

-- Q4 Calculate total sales amount for each product category
SELECT
  PRODUCTNAME,
  SUM(AMOUNT) AS TOTALSALES
FROM
  ORDERS
GROUP BY
  PRODUCTNAME;

-- Q5 Retrieve average salary of departments with more than five employees
-- Assuming there's a Department table with a foreign key to Employees table for department assignment
-- Here's a simplified example without the Department table
SELECT
  AVG(SALARY) AS AVERAGESALARY
FROM
  EMPLOYEES
GROUP BY
  DEPARTMENTID
HAVING
  COUNT(*) > 5;

-- Q6 Retrieve unique product names using DISTINCT
SELECT
  DISTINCT PRODUCTNAME
FROM
  ORDERS;

-- Q7 Calculate total sales amount from the Sales table
SELECT
  SUM(AMOUNT) AS TOTALSALES,
  COUNT(*)    AS TOTALORDERS,
  AVG(AMOUNT) AS AVERAGEAMOUNT
FROM
  ORDERS;

-- Q8 Perform INNER JOIN between Orders and Customers tables to retrieve orders along with customer information
SELECT
  O.ORDERID,
  O.PRODUCTNAME,
  O.AMOUNT,
  C.CUSTOMERNAME
FROM
  ORDERS    O
  INNER JOIN CUSTOMERS C
  ON O.CUSTOMERID = C.CUSTOMERID;

-- Q9 Retrieve names of all employees who work in departments with more than 50 employees using a subquery
-- Assuming there's a Department table with a count of employees per department
SELECT
  NAME
FROM
  EMPLOYEES
WHERE
  DEPARTMENTID IN (
    SELECT
      DEPARTMENTID
    FROM
      DEPARTMENTS
    WHERE
      EMPLOYEECOUNT > 50
  );

-- Q10 Creating a view named "HighSales" that displays all orders with a total amount greater than $1000
CREATE VIEW HIGHSALES AS
  SELECT
    *
  FROM
    ORDERS
  WHERE
    AMOUNT > 1000;