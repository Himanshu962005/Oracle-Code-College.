/* Design a Salary Table Oracle/SQL Server with One Primary Key and Foreign Key(Employee Table) Having Following Fields : Month, Working Days, Deptid, Gross, Incentive, Deduction and Net Salary. */
-- Create Employee Table(Parent Table).
CREATE TABLE Employee (
Eid NUMBER PRIMARY KEY,
Ename VARCHAR2(50),
Edesignation VARCHAR2(50),
Edoj DATE,
Edob DATE,
Eaddress VARCHAR2(100),
Salary NUMBER(10,2),
Econtact VARCHAR2(15)
);
-- Insert 5 Records into Employee(needed first because Salary Table uses Eid as Foreign Key).
INSERT INTO Employee VALUES (1, 'Himanshu', 'Manager', TO_DATE('2020-01-10','YYYY-MM-DD'), TO_DATE('1990-05-15','YYYY-MM-DD'), 'Delhi', 50000, '9876543210');
INSERT INTO Employee VALUES (2, 'Divya', 'Engineer', TO_DATE('2021-03-12','YYYY-MM-DD'), TO_DATE('1995-07-20','YYYY-MM-DD'), 'Mumbai', 40000, '9123456780');
INSERT INTO Employee VALUES (3, 'Prashant', 'Developer', TO_DATE('2019-06-20','YYYY-MM-DD'), TO_DATE('1992-11-25','YYYY-MM-DD'), 'Chennai', 45000, '9988776655');
INSERT INTO Employee VALUES (4, 'Laxmi', 'Engineer', TO_DATE('2022-09-05','YYYY-MM-DD'), TO_DATE('1998-01-10','YYYY-MM-DD'), 'Kolkata', 42000, '9876501234');
INSERT INTO Employee VALUES (5, 'Digesh', 'HR', TO_DATE('2018-02-15','YYYY-MM-DD'), TO_DATE('1991-08-30','YYYY-MM-DD'), 'Hyderabad', 35000, '9123009876');
-- Create Salary Table(Child with Foreign Key).
CREATE TABLE Salary (
Sid NUMBER PRIMARY KEY,
Eid NUMBER,
Month VARCHAR2(20),
working_days NUMBER,
deptid VARCHAR2(30),
gross NUMBER(10,2),
incentive NUMBER(10,2),
deduction NUMBER(10,2),
net_salary NUMBER(10,2),
CONSTRAINT fk_emp FOREIGN KEY (eid) REFERENCES Employee(eid)
);
-- (A) Insert Five Records in the Above Created Table.
INSERT INTO Salary VALUES (1, 1, 'January', 26, 'HR', 50000, 5000, 2000, 53000);
INSERT INTO Salary VALUES (2, 2, 'January', 25, 'Engineer', 40000, 3000, 1000, 42000);
INSERT INTO Salary VALUES (3, 3, 'January', 26, 'Developer', 45000, 4000, 1500, 47500);
INSERT INTO Salary VALUES (4, 4, 'January', 24, 'Engineer', 42000, 2000, 1000, 43000);
INSERT INTO Salary VALUES (5, 5, 'January', 26, 'HR', 35000, 2500, 800, 36700);
-- (B) Display All Five Records.
SELECT * FROM Employee;
SELECT * FROM Salary;
-- (C) Use Foreign Key Relations and Display Records.
SELECT e.eid, e.ename, e.edesignation, s.month, s.gross, s.net_salary
FROM Employee e
JOIN Salary s ON e.eid = s.eid;
-- (D) Update the Second Record of Field Deptid as 'Sales'.
UPDATE Salary
SET deptid = 'Sales'
WHERE sid = 2;
-- (E) Add One New Field in the Table.
ALTER TABLE Salary ADD bonus NUMBER(10,2);
