/* Create a new Table in Oracle/SQL Server and practice for Group By and Order By Clause. */
-- Step 1: Create a Table — SALES.
-- We’ll Create a Sales Table to Store Sales Data for Different Employees and Products.
CREATE TABLE Sales (
sale_id NUMBER PRIMARY KEY,
employee_name VARCHAR2(50),
product_name VARCHAR2(50),
quantity NUMBER,
price NUMBER(10,2),
sale_date DATE
);
-- Step 2: Insert Sample Records.
-- Let’s Add Some Realistic Data.
INSERT INTO Sales VALUES (1, 'Himanshu', 'Laptop', 2, 50000, TO_DATE('2025-10-01','YYYY-MM-DD'));
INSERT INTO Sales VALUES (2, 'Himanshu', 'Mouse', 5, 500, TO_DATE('2025-10-02','YYYY-MM-DD'));
INSERT INTO Sales VALUES (3, 'Divya', 'Laptop', 1, 52000, TO_DATE('2025-10-03','YYYY-MM-DD'));
INSERT INTO Sales VALUES (4, 'Prashant', 'Keyboard', 3, 1500, TO_DATE('2025-10-01','YYYY-MM-DD'));
INSERT INTO Sales VALUES (5, 'Laxmi', 'Laptop', 2, 48000, TO_DATE('2025-10-02','YYYY-MM-DD'));
INSERT INTO Sales VALUES (6, 'Divya', 'Mouse', 10, 450, TO_DATE('2025-10-03','YYYY-MM-DD'));
INSERT INTO Sales VALUES (7, 'Himanshu', 'Keyboard', 4, 1400, TO_DATE('2025-10-04','YYYY-MM-DD'));
INSERT INTO Sales VALUES (8, 'Prashant', 'Laptop', 1, 53000, TO_DATE('2025-10-05','YYYY-MM-DD'));
INSERT INTO Sales VALUES (9, 'Laxmi', 'Mouse', 6, 600, TO_DATE('2025-10-06','YYYY-MM-DD'));
INSERT INTO Sales VALUES (10, 'Divya', 'Laptop', 3, 51000, TO_DATE('2025-10-07','YYYY-MM-DD'));
-- Step 3: Verify the Table.
SELECT * FROM Sales;
-- Step 4: Practice Group By Clause.
-- Example 1: Total Quantity Sold by Each Employee.
SELECT employee_name, SUM(quantity) AS total_quantity
FROM Sales
GROUP BY employee_name;
-- Groups Rows by Employee_Name and Calculates Total Quantity Sold by Each.
-- Example 2: Total Sales Value by Product.
SELECT product_name, SUM(quantity * price) AS total_sales
FROM Sales
GROUP BY product_name;
-- Quantity * Price Gives Total Sales for Each Product. The Group By Combines All Rows having the Same Product_Name.
-- Example 3: Total Sales by Each Employee for Each Product.
SELECT employee_name, product_name, SUM(quantity * price) AS total_sales
FROM Sales
GROUP BY employee_name, product_name;
-- Grouped by Both Employee and Product → Shows Which Employee Sold Which Product and Total Sales Value.
-- Step 5: Practice Order By Clause.
-- Example 1: Sort Sales by Date (Ascending).
SELECT * FROM Sales
ORDER BY sale_date;
-- Example 2: Sort Employees by Total Quantity Sold (Descending).
SELECT employee_name, SUM(quantity) AS total_quantity
FROM Sales
GROUP BY employee_name
ORDER BY total_quantity DESC;
-- Example 3: Sort Products by Total Revenue (High → Low).
SELECT product_name, SUM(quantity * price) AS total_revenue
FROM Sales
GROUP BY product_name
ORDER BY total_revenue DESC;
