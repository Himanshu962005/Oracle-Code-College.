/* Create a new Table in Oracle/SQL Server and practice for Inner and Outer Join. */
-- Step 1: Create Tables.
CREATE TABLE Department (
dept_id     NUMBER PRIMARY KEY,
dept_name   VARCHAR2(50)
);
CREATE TABLE Employee (
emp_id      NUMBER PRIMARY KEY,
emp_name    VARCHAR2(50),
dept_id     NUMBER,
salary      NUMBER(10,2),
FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
-- Step 2: Insert Sample Data.
-- Department Table.
INSERT INTO Department VALUES (1, 'IT');
INSERT INTO Department VALUES (2, 'HR');
INSERT INTO Department VALUES (3, 'Finance');
INSERT INTO Department VALUES (4, 'Sales');
-- Employee Table.
INSERT INTO Employee VALUES (101, 'Amit Kumar', 1, 50000);
INSERT INTO Employee VALUES (102, 'Neha Sharma', 2, 45000);
INSERT INTO Employee VALUES (103, 'Ravi Mehta', 1, 60000);
INSERT INTO Employee VALUES (104, 'Pooja Verma', 3, 40000);
INSERT INTO Employee VALUES (105, 'Vikas Patel', NULL, 35000); -- No Department.
-- Step 3: Practice INNER JOIN.
SELECT e.emp_name, e.salary, d.dept_name
FROM Employee e
INNER JOIN Department d
ON e.dept_id = d.dept_id;
/* Explanation:
INNER JOIN returns only those records where both tables have matching dept_id. */
-- Step 4: Practice LEFT OUTER JOIN.
SELECT e.emp_name, e.salary, d.dept_name
FROM Employee e
LEFT OUTER JOIN Department d
ON e.dept_id = d.dept_id;
/* Explanation:
LEFT OUTER JOIN returns all employees, even if they don’t have a matching department.
If there’s no match, department name shows as NULL. */
-- Step 5: Practice RIGHT OUTER JOIN.
SELECT e.emp_name, e.salary, d.dept_name
FROM Employee e
RIGHT OUTER JOIN Department d
ON e.dept_id = d.dept_id;
/* Explanation:
RIGHT OUTER JOIN returns all departments, even those with no employees.*/