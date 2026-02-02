/* Create a new Table in Oracle/SQL Server and practice for any two Date Formats. */
-- Step 1: Create Table.
-- We’ll Create a Table called EMP_DATE_TEST.
CREATE TABLE Emp_Date_Test (
emp_id    NUMBER PRIMARY KEY,
emp_name  VARCHAR2(50),
join_date DATE
);
-- Step 2: Insert Dates in Different Formats.
-- Oracle Uses the Function TO_DATE (String, Format_Model) to Convert a Text Date into a Real Date.
-- Format 1: 'DD-MM-YYYY'.
INSERT INTO Emp_Date_Test VALUES (1, 'Himanshu Karwa', TO_DATE('09-06-2025', 'DD-MM-YYYY'));
-- Format 2: 'Month DD, YYYY'.
INSERT INTO Emp_Date_Test VALUES (2, 'Divya Pandey', TO_DATE('October 05, 2025', 'Month DD, YYYY'));
-- Format 3: 'YYYY/MM/DD'.
INSERT INTO Emp_Date_Test VALUES (3, 'Prashant Verma', TO_DATE('2025/03/15', 'YYYY/MM/DD'));
-- Step 3: View the Data.
SELECT * FROM Emp_Date_Test;
-- Oracle internally stores all dates in the same format, but we can display them in different styles using TO_CHAR().
-- Step 4: Display Dates in Two Different Formats.
-- Format 1: DD-Mon-YYYY.
SELECT emp_name, TO_CHAR(join_date, 'DD-Mon-YYYY') AS "Joining Date" FROM Emp_Date_Test;
-- Format 2: Day, DD Month YYYY
SELECT emp_name, TO_CHAR(join_date, 'Day, DD Month YYYY') AS "Join Date Full" FROM Emp_Date_Test;
-- Step 5: Current Date.
SELECT SYSDATE AS "Current System Date" FROM DUAL;
-- DUAL is a dummy table in Oracle used for testing expressions.