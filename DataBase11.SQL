/* Create a New Table in Oracle/SQL Server and Practice for Max(), Min(), Avg() and Count() Functions. */
-- Step 1: Create a New Table.
CREATE TABLE Employee_Salary (
emp_id NUMBER PRIMARY KEY,
emp_name VARCHAR2(50),
department VARCHAR2(30),
salary NUMBER(10,2)
);
-- Step 2: Insert Sample Data.
INSERT INTO Employee_Salary VALUES (1, 'Himanshu', 'HR', 35000);
INSERT INTO Employee_Salary VALUES (2, 'Divya', 'IT', 55000);
INSERT INTO Employee_Salary VALUES (3, 'Prashant', 'Finance', 40000);
INSERT INTO Employee_Salary VALUES (4, 'Laxmi', 'IT', 60000);
INSERT INTO Employee_Salary VALUES (5, 'Digesh', 'HR', 32000);
INSERT INTO Employee_Salary VALUES (6, 'Khushi', 'Finance', 45000);
INSERT INTO Employee_Salary VALUES (7, 'Nawajish', 'IT', 70000);
-- Step 3: Display Employee_Salary Records.
SELECT * FROM Employee_Salary;
-- Step 4: Practice SQL Aggregate Functions.
-- 1. Find the Highest Salary (MAX).
SELECT MAX(salary) AS Highest_Salary
FROM Employee_Salary;
-- 2. Find the Lowest Salary (MIN).
SELECT MIN(salary) AS Lowest_Salary
FROM Employee_Salary;
-- 3. Find the Average Salary (AVG).
SELECT AVG(salary) AS Average_Salary
FROM Employee_Salary;
-- 4. Count Total Employees (COUNT).
SELECT COUNT(*) AS Total_Employees
FROM Employee_Salary;
