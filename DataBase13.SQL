/* Create a New Table in Oracle/SQL Server and Practice for Unique and Check Constraints. */
-- Step 1: Create a New Table.
-- Let’s Create a Table called EMPLOYEE_DETAILS.
CREATE TABLE Employee_Details (
emp_id NUMBER PRIMARY KEY,
emp_name VARCHAR2(50) NOT NULL,
email VARCHAR2(100) UNIQUE,
salary NUMBER(10,2) CHECK (salary > 0),
department VARCHAR2(30) CHECK (department IN ('HR', 'IT', 'Finance', 'Sales'))
);
-- Step 2: Insert Sample Data.
INSERT INTO Employee_Details VALUES (1, 'Himanshu Karwa', 'Valthimanshu@gmail.com', 45000, 'IT');
INSERT INTO Employee_Details VALUES (2, 'Divya Pandey', 'neha@gmail.com', 38000, 'HR');
INSERT INTO Employee_Details VALUES (3, 'Prashant Verma', 'ravi@gmail.com', 55000, 'Finance');
INSERT INTO Employee_Details VALUES (4, 'Laxmi Sahu', 'pooja@gmail.com', 60000, 'Sales');
-- These All Work Fine — All Constraints Satisfied.
-- Step 3: Test the Constraints (Invalid Data).
-- 1. Test UNIQUE constraint:
INSERT INTO Employee_Details VALUES (5, 'Digesh Kumar Sahu', 'ravi@gmail.com', 48000, 'IT');
-- Error: Unique Constraint Violated (Because 'ravi@gmail.com' Already Exists).
-- 2. Test CHECK (Salary > 0):
INSERT INTO Employee_Details VALUES (6, 'Khushi Sen', 'kiran@gmail.com', -25000, 'HR');
-- Error: Check Constraint Violated (Because Salary is Negative).
-- 3. Test CHECK (Department allowed list):
INSERT INTO Employee_Details VALUES (7, 'Sayed Nawajish Ali', 'suman@gmail.com', 40000, 'Marketing');
-- Error: Check Constraint Violated (Marketing is not in the allowed list).
-- Step 4: View Data.
SELECT * FROM Employee_Details;
-- You’ll See Only Valid Rows Inserted (Himanshu, Divya, Prashant, Laxmi).
