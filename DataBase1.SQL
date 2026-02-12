/* Design an Employee Table in Oracle/SQL Server Having Eid(Primary Key) Ename, Edesignation, Edoj, Edob, Eaddress, Salary, Econtact as Fields and Answer the Following Questions. */
CREATE TABLE Employee (
eid NUMBER PRIMARY KEY,
ename VARCHAR2(50),
edesignation VARCHAR2(50),
edoj DATE,
edob DATE,
eaddress VARCHAR2(100),
salary NUMBER(10,2),
econtact VARCHAR2(15)
);
-- (A) Insert Five Records in Above Created Table.
INSERT INTO Employee VALUES (1, 'Himanshu', 'Manager', '10-JAN-2020', '15-MAY-1990', 'Delhi', 50000, '9876543210');
INSERT INTO Employee VALUES (2, 'Divya', 'Clerk', '12-MAR-2021', '20-JUL-1995', 'Mumbai', 20000, '9123456780');
INSERT INTO Employee VALUES (3, 'Prashant', 'Developer', '20-JUN-2019', '25-NOV-1992', 'Chennai', 40000, '9988776655');
INSERT INTO Employee VALUES (4, 'Laxmi', 'Tester', '05-SEP-2022', '10-JAN-1998', 'Kolkata', 25000, '9876501234');
INSERT INTO Employee VALUES (5, 'Digesh', 'HR', '15-FEB-2018', '30-AUG-1991', 'Hyderabad', 35000, '9123009876');
-- (B) Display All Five Records.
SELECT * FROM Employee;
-- (C) Delete the Fourth Record.
DELETE FROM Employee WHERE eid = 4;
-- (D) Update the Third Record of the Field Ename as ‘Laxmi’.
UPDATE Employee
SET ename = 'Laxmi'
WHERE eid = 3;
-- (E) Add One New Field in the Table.
ALTER TABLE Employee ADD dept VARCHAR2(30);
