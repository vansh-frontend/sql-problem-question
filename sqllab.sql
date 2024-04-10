-- 1. Construct a DQL query to retrieve the names of all employees whose ages fall between 25 and 35 years old.
-- 2. Utilize the IN operator to retrieve all orders placed by customers with IDs 101, 105, and 110.
-- 3. Write a query using the LIKE operator to retrieve all product names that start with the letter 'p'.
-- 4. Create a GROUP BY query to calculate the total sales amount for each product category in the "Orders" table.
-- 5. Write a query that uses a HAVING clause to retrieve the average salary of departments with more than five employees.
-- 6. Implement a query that uses the DISTINCT keyword to retrieve unique values of the "Product_Name" column from the "Products" table.
-- 7. Create a query that utilizes the SUM(), COUNT(), AVG() function to calculate the total sales amount from the "Sales" table.
-- 8. Create a query that performs an INNER JOIN between the "Orders" and "Customers" tables to retrieve orders along with customer information.
-- 9. Implement a query that utilizes a subquery to retrieve the names of all employees who work in departments with more than 50 employees 10. How would you create a view named "HighSales" that displays all orders with a total amount greater than $1000 from the "Orders" table?



CREATE DATABASE EXP;

USE EXP;

CREATE TABLE EMP(
    NAME VARCHAR(100),
    AGE INT,
);

INSERT INTO EMP (
    NAME,
    AGE
) VALUES(
    'vansh',
    25
),
(
    'navraj',
    27
),
(
    'harish',
    22
),
(
    'komal',
    35
),
(
    'jishanu',
    24
),
(
    'madhav',
    21
);

-- Q1 reterive the data of emp who has age between 25 and 35
SELECT
    *
FROM
    EMP
WHERE
    AGE BETWEEN 25 AND 35;

-- Q2 retreive all orders placed with id 101,105 and 110
CREATE TABLE ORDERS(
    ORDER_ID INT,
    CUST_NAME VARCHAR(100),
    ITEM VARCHAR(100)
);

INSERT INTO ORDERS (
    ORDER_ID,
    CUST_NAME,
    ITEM
) VALUES (
    101,
    'vansh',
    'pizza'
),
(
    102,
    'navraj',
    'noodles'
),
(
    103,
    'harish',
    'bullets'
),
(
    104,
    'madhav',
    'rajma rice'
),
(
    105,
    'komal',
    'litti choka'
),
(
    110,
    'rubal',
    'maki roti'
);

-- Q2 reterive data of order_id 101,105,110
SELECT
    *
FROM
    ORDERS
WHERE
    ORDER_ID IN (101, 105, 110);

-- Q3 reterive  letter start with prepare P
SELECT
    *
FROM
    ORDERS
WHERE
    ITEM LIKE '%p%';

INSERT INTO ORDERS (
    ORDER_ID,
    CUST_NAME,
    ITEM
) VALUES(
    112,
    'vansh',
    'hotdog'
),
(
    113,
    'navraj',
    'kadi rice'
),
(
    114,
    'harish',
    'rice'
);

-- Q4 use of group by
SELECT
    CUST_NAME
FROM
    ORDERS
WHERE
    ITEM = 'pizza'
GROUP BY
    CUST_NAME;

-- Q5 use of having clause
CREATE TABLE EMPLOYEE (
    SALARY BIGINT,
    NAME VARCHAR(1000),
    BONUS FLOAT
);

INSERT INTO EMPLOYEE (
    SALARY,
    NAME,
    BONUS
) VALUES (
    80000,
    'vansh',
    20000
),
(
    75000,
    'navraj',
    15000
),
(
    60000,
    'harish',
    12000
),
(
    65000,
    'madhav',
    10000
),
(
    90000,
    'komal',
    8000
);

-- Q5 having clause
SELECT
    SALARY,
    AVG(SALARY) AS AVG_SALARY
FROM
    EMPLOYEE
GROUP BY
    SALARY
HAVING
    AVG(SALARY) > 12000;

-- Q7 use of sum() ,avg(),count
-- avg()
SELECT
    AVG(SALARY)
FROM
    EMPLOYEE;

-- sum()
SELECT
    SUM(SALARY) AS TOTAL_SALARY
FROM
    EMPLOYEE;

-- count()
SELECT
    COUNT(NAME)
FROM
    EMPLOYEE;

-- Q6 use of distinct
SELECT
    DISTINCT CUST_NAME
FROM
    ORDERS;

-- Q8 max(salary) in employee table
SELECT
    MAX(SALARY)
FROM
    EMPLOYEE;