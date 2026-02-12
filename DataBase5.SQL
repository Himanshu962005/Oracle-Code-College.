/* Create a New Table in Oracle/SQL Server and Practice for Join Operation. */
-- Step 1: Create Tables.
-- Table 1: EMPLOYEE.
CREATE TABLE Employee (
eid NUMBER PRIMARY KEY,
ename VARCHAR2(50),
deptid NUMBER,
salary NUMBER(10,2)
);
-- Table 2: DEPARTMENT. 
CREATE TABLE Department (
deptid NUMBER PRIMARY KEY,
deptname VARCHAR2(50),
location VARCHAR2(50)
);
-- Step 2: Insert Sample Data.
-- Insert Data into DEPARTMENT.
INSERT INTO department VALUES (1, 'HR', 'Delhi');
INSERT INTO department VALUES (2, 'Sales', 'Mumbai');
INSERT INTO department VALUES (3, 'IT', 'Chennai');
INSERT INTO department VALUES (4, 'Finance', 'Kolkata');
-- Insert Data into EMPLOYEE.
INSERT INTO employee VALUES (101, 'Himanshu', 1, 50000);
INSERT INTO employee VALUES (102, 'Divya', 2, 45000);
INSERT INTO employee VALUES (103, 'Prashant', 3, 60000);
INSERT INTO employee VALUES (104, 'Laxmi', 2, 40000);
INSERT INTO employee VALUES (105, 'Digesh', NULL, 35000);
-- Step 3: Practice Joins.
-- 1. INNER JOIN (Shows Only Matching Rows).
SELECT e.eid, e.ename, d.deptname, d.location
FROM employee e
INNER JOIN department d ON e.deptid = d.deptid;
-- 2. LEFT JOIN (All Employees, Even If No Department).
SELECT e.eid, e.ename, d.deptname, d.location
FROM employee e
LEFT JOIN department d ON e.deptid = d.deptid;
-- 3. RIGHT JOIN (All Departments, Even If No Employee).
SELECT e.eid, e.ename, d.deptname, d.location
FROM employee e
RIGHT JOIN department d ON e.deptid = d.deptid;
-- 4. FULL OUTER JOIN (All Employees + All Departments).
SELECT e.eid, e.ename, d.deptname, d.location
FROM employee e
FULL OUTER JOIN department d ON e.deptid = d.deptid;
-- 5. CROSS JOIN (All Possible Combinations).
SELECT e.ename, d.deptname
FROM employee e
CROSS JOIN department d;
