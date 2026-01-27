/* Create a new User in Oracle/SQL Server and practice for the Commit and Rollback Command. */
-- Step 1: Create a New User.
Create user Himanshu identified by Valtryek962005;
-- Grant Necessary Privileges.
GRANT CONNECT, RESOURCE, CREATE SESSION, CREATE TABLE, CREATE SEQUENCE TO Himanshu;
-- Switch to the User.
ALTER SESSION SET CURRENT_SCHEMA = Himanshu;
-- Step 2: Create a Table for Practice.
CREATE TABLE Employee_Test (
eid NUMBER PRIMARY KEY,
ename VARCHAR2(50),
salary NUMBER(10,2)
);
-- Step 3: Insert Data without COMMIT.
INSERT INTO Employee_Test VALUES (1, 'Himanshu', 50000);
INSERT INTO Employee_Test VALUES (2, 'Divya', 45000);
INSERT INTO Employee_Test VALUES (3, 'Prashant', 60000);
-- Step 4: Practice ROLLBACK.
ROLLBACK;
-- All Previous Inserts are Undone.
-- Check with:
SELECT * FROM Employee_Test;
-- Step 5: Insert Data and COMMIT.
INSERT INTO Employee_Test VALUES (1, 'Laxmi', 50000);
INSERT INTO Employee_Test VALUES (2, 'Digesh', 45000);
COMMIT;
-- Now These Inserts are Permanent.
-- Check with:
SELECT * FROM Employee_Test;