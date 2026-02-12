/* Create a new Table in Oracle/SQL Server and practice for Having Clauses with Sub Queries. */
-- Step 1: Create Table.
CREATE TABLE Sales_Data (
sales_id     NUMBER PRIMARY KEY,
salesman     VARCHAR2(50),
region       VARCHAR2(30),
total_sales  NUMBER(10,2)
);
-- Step 2: Insert Sample Data.
INSERT INTO Sales_Data VALUES (1, 'Himanshu Karwa', 'North', 50000);
INSERT INTO Sales_Data VALUES (2, 'Divya Pandey', 'East', 30000);
INSERT INTO Sales_Data VALUES (3, 'Prashant Verma', 'West', 45000);
INSERT INTO Sales_Data VALUES (4, 'Laxmi Sahu', 'South', 70000);
INSERT INTO Sales_Data VALUES (5, 'Digesh Kumar Sahu', 'North', 65000);
INSERT INTO Sales_Data VALUES (6, 'Khushi Sen', 'East', 25000);
INSERT INTO Sales_Data VALUES (7, 'Sayed Nawajish Ali', 'South', 55000);
-- Step 3: Query Using HAVING Clause with Subquery.
SELECT region, AVG(total_sales) AS avg_sales
FROM Sales_Data
GROUP BY region
HAVING AVG(total_sales) >
       (SELECT AVG(total_sales) FROM Sales_Data);
/* Explanation.
The Inner Query (SubQuery): (SELECT AVG(total_sales) FROM Sales_Data).
Calculates the Overall Average Sales Across All Regions. */
-- The Outer Query: Groups Data by Region and Only Shows Regions where the Average Sales per Region is Higher than the Overall Average.