/* Create a New Table in Oracle/SQL Server and Practice for Inner and Outer Join. */
-- Step 1: Create Tables.
-- Table 1: DEPARTMENT.
CREATE TABLE Department (
dept_id NUMBER PRIMARY KEY,
dept_name VARCHAR2(50)
);
-- Table 2: EMPLOYEE.
CREATE TABLE Employee (
emp_id NUMBER PRIMARY KEY,
emp_name VARCHAR2(50),
dept_id NUMBER,
salary NUMBER(10,2),
FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
-- Step 2: Insert Sample Data.
-- Department Table.
INSERT INTO Department VALUES (1, 'IT');
INSERT INTO Department VALUES (2, 'HR');
INSERT INTO Department VALUES (3, 'Finance');
INSERT INTO Department VALUES (4, 'Sales');
-- Employee Table.
INSERT INTO Employee VALUES (101, 'Himanshu Karwa', 1, 50000);
INSERT INTO Employee VALUES (102, 'Divya Pandey', 2, 45000);
INSERT INTO Employee VALUES (103, 'Prashant Verma', 1, 60000);
INSERT INTO Employee VALUES (104, 'Laxmi Sahu', 3, 40000);
INSERT INTO Employee VALUES (105, 'Digesh Kumar Sahu', NULL, 35000); -- No Department.
-- Step 3: Practice INNER JOIN.
SELECT e.emp_name, e.salary, d.dept_name
FROM Employee e
INNER JOIN Department d
ON e.dept_id = d.dept_id;
/* Explanation:
INNER JOIN Returns Only Those Records Where Both Tables Have Matching Dept_Id. */
-- Step 4: Practice LEFT OUTER JOIN.
SELECT e.emp_name, e.salary, d.dept_name
FROM Employee e
LEFT OUTER JOIN Department d
ON e.dept_id = d.dept_id;
/* Explanation:
LEFT OUTER JOIN Returns All Employees, Even If They Don’t Have a Matching Department.
If There’s No Match, Department Name Shows as NULL. */
-- Step 5: Practice RIGHT OUTER JOIN.
SELECT e.emp_name, e.salary, d.dept_name
FROM Employee e
RIGHT OUTER JOIN Department d
ON e.dept_id = d.dept_id;
/* Explanation:
RIGHT OUTER JOIN Returns All Departments, Even Those With No Employees. */
