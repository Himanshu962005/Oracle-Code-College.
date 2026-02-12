/* Create a New Table in Oracle/SQL Server and Practice for Drop Command. */
-- Step 1: Create a New Table.
-- We’ll Create a Table Called Student_Drop for Practice.
CREATE TABLE Student_Drop (
student_id NUMBER PRIMARY KEY,
student_name VARCHAR2(50),
course VARCHAR2(30),
marks NUMBER(5)
);
-- Step 2: Insert Sample Data.
INSERT INTO Student_Drop VALUES (1, 'Himanshu Karwa', 'BCA', 85);
INSERT INTO Student_Drop VALUES (2, 'Divya Pandey', 'MCA', 90);
INSERT INTO Student_Drop VALUES (3, 'Prashant Verma', 'BSc', 78);
-- Step 3: Display Table Data.
SELECT * FROM Student_Drop;
-- Step 4: Drop the Table.
-- Now, If We Don’t Need the Table Anymore, We Can Delete the Whole Table Structure and Data Using the DROP Command.
DROP TABLE Student_Drop;
/* Important Notes.
DROP TABLE Permanently Removes Both Data and Structure of the Table.
Once Dropped, The Table Cannot Be Recovered Unless You Have a Backup. */
-- You Can Confirm By Running:
SELECT * FROM Student_Drop;
