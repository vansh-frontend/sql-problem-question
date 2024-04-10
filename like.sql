-- work of like operatorn in sql
USE EXP;

CREATE TABLE MARKSHEET (
  NAME VARCHAR(100),
  ID INT PRIMARY KEY,
  MARKS INT
);

INSERT INTO MARKSHEET (
  NAME,
  ID,
  MARKS
) VALUES (
  'vansh',
  1,
  98
),
(
  'navraj',
  2,
  95
),
(
  'madhav',
  3,
  96
),
(
  'harry',
  4,
  97
);

-- query for like operator
SELECT
  *
FROM
  MARKSHEET
WHERE
  NAME LIKE '%an%';