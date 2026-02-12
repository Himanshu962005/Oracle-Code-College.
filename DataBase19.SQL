/* Create a new table in Oracle/SQL Server and practice for Drop command. */
-- Step 1: Create a New Table.
We’ll Create a Table called Student_Drop for practice.
CREATE TABLE Student_Drop (
student_id   NUMBER PRIMARY KEY,
student_name VARCHAR2(50),
course       VARCHAR2(30),
marks        NUMBER(5)
);
-- Step 2: Insert Sample Data.
INSERT INTO Student_Drop VALUES (1, 'Amit Sharma', 'BCA', 85);
INSERT INTO Student_Drop VALUES (2, 'Neha Patel', 'MCA', 90);
INSERT INTO Student_Drop VALUES (3, 'Ravi Mehta', 'BSc', 78);
-- Step 3: Display Table Data.
SELECT * FROM Student_Drop;
-- Step 4: Drop the Table.
-- Now, if we don’t need the table anymore, we can delete the whole table structure and data using the DROP command.
DROP TABLE Student_Drop;
/* Important Notes.
DROP TABLE permanently removes both data and structure of the table.
Once dropped, the table cannot be recovered unless you have a backup. */
-- You can confirm by running:
SELECT * FROM Student_Drop;