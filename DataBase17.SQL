/* Create a new Table in Oracle/SQL Server and practice for Aliases in any Table. */
-- Step 1: Create Table.
CREATE TABLE Employee_Info (
emp_id     NUMBER PRIMARY KEY,
emp_name   VARCHAR2(50),
department VARCHAR2(30),
salary     NUMBER(10,2)
);
-- Step 2: Insert Sample Data.
INSERT INTO Employee_Info VALUES (1, 'Amit Kumar', 'IT', 50000);
INSERT INTO Employee_Info VALUES (2, 'Neha Sharma', 'HR', 45000);
INSERT INTO Employee_Info VALUES (3, 'Ravi Mehta', 'Finance', 60000);
INSERT INTO Employee_Info VALUES (4, 'Pooja Verma', 'Sales', 40000);
-- Step 3: Practice Aliases.
-- (A) Column Aliases.
-- Aliases for columns are created using the AS keyword.
SELECT emp_name AS "Employee Name",
department AS "Dept",
salary AS "Monthly Salary"
FROM Employee_Info;
-- (B) Table Alias.
-- You can give a short name (alias) to the table for easier referencing.
SELECT e.emp_name, e.department, e.salary
FROM Employee_Info e
WHERE e.salary > 45000;
-- Here, e is the table alias for Employee_Info.
-- (C) Combining Both Aliases.
SELECT e.emp_name AS "Name",
e.department AS "Dept",
e.salary AS "Salary"
FROM Employee_Info e
ORDER BY e.salary DESC;