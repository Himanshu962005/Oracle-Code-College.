/* Create a New Table in Oracle/SQL Server and Practice for Aliases in Any Table. */
-- Step 1: Create Table.
CREATE TABLE Employee_Info (
emp_id NUMBER PRIMARY KEY,
emp_name VARCHAR2(50),
department VARCHAR2(30),
salary NUMBER(10,2)
);
-- Step 2: Insert Sample Data.
INSERT INTO Employee_Info VALUES (1, 'Himanshu Karwa', 'IT', 50000);
INSERT INTO Employee_Info VALUES (2, 'Divya Pandey', 'HR', 45000);
INSERT INTO Employee_Info VALUES (3, 'Prashant Verma', 'Finance', 60000);
INSERT INTO Employee_Info VALUES (4, 'Laxmi Sahu', 'Sales', 40000);
-- Step 3: Practice Aliases.
-- (A) Column Aliases.
-- Aliases for Columns are Created Using the as Keyword.
SELECT emp_name AS "Employee Name",
department AS "Dept",
salary AS "Monthly Salary"
FROM Employee_Info;
-- (B) Table Alias.
-- You Can Give a Short Name (Alias) to the Table for Easier Referencing.
SELECT e.emp_name, e.department, e.salary
FROM Employee_Info e
WHERE e.salary > 45000;
-- Here, E is the Table Alias for Employee_Info.
-- (C) Combining Both Aliases.
SELECT e.emp_name AS "Name",
e.department AS "Dept",
e.salary AS "Salary"
FROM Employee_Info e
ORDER BY e.salary DESC;
