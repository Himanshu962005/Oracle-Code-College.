/* Create a new Table in Oracle/SQL Server and practice for Lower(), Substr(), Trim() and Upper() Functions. */
-- Step 1: Create a New Table.
-- Let’s Create a Table called STUDENT_INFO.
CREATE TABLE Student_Info (
student_id   NUMBER PRIMARY KEY,
student_name VARCHAR2(50),
course       VARCHAR2(30),
city         VARCHAR2(30)
);
-- Step 2: Insert Sample Data.
INSERT INTO Student_Info VALUES (1, 'Himanshu Karwa', 'BCA', 'Raipur');
INSERT INTO Student_Info VALUES (2, 'Divya Pandey', 'BBA', 'Bhilai');
INSERT INTO Student_Info VALUES (3, 'prashant Verma', 'BSc', ' Durg ');
INSERT INTO Student_Info VALUES (4, 'laxmi Sahu', 'BA', ' Bilaspur ');
INSERT INTO Student_Info VALUES (5, 'digesh Kumar Sahu', 'BCom', ' Raigarh ');
-- Step 3: Practice String Functions.
-- 1. LOWER() — Convert Text to Lowercase.
SELECT student_name, LOWER(student_name) AS Lower_Name
FROM Student_Info;
-- 2. UPPER() — Convert Text to Uppercase.
SELECT student_name, UPPER(student_name) AS Upper_Name
FROM Student_Info;
-- 3. SUBSTR() — Extract Part of a String.
-- Syntax: SUBSTR(Column_Name, Start_Position, Length).
-- Example 1:
SELECT student_name, SUBSTR(student_name, 1, 4) AS First_Four_Letters
FROM Student_Info;
-- Example 2:
SELECT student_name, SUBSTR(student_name, -5, 5) AS Last_Five_Letters
FROM Student_Info;
-- Extracts Last 5 Letters from the Name.
-- 4. TRIM() — Remove Extra Spaces.
SELECT city, TRIM(city) AS Trimmed_City
FROM Student_Info;