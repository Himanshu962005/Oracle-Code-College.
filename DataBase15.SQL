/* Create a new Table in Oracle/SQL Server and practice using Clauses. */
-- Step 1: Create Table.
CREATE TABLE Student_Marks (
student_id   NUMBER PRIMARY KEY,
student_name VARCHAR2(50),
course       VARCHAR2(30),
marks        NUMBER(5)
);
-- Step 2: Insert Sample Data.
INSERT INTO Student_Marks VALUES (1, 'Himanshu Karwa', 'Maths', 85);
INSERT INTO Student_Marks VALUES (2, 'Divya Pandey', 'Science', 75);
INSERT INTO Student_Marks VALUES (3, 'Prashant Verma', 'Maths', 90);
INSERT INTO Student_Marks VALUES (4, 'Laxmi Sahu', 'English', 70);
INSERT INTO Student_Marks VALUES (5, 'Digesh Kumar Sahu', 'Science', 88);
INSERT INTO Student_Marks VALUES (6, 'Khushi Sen', 'English', 60);
-- Step 3: Practice Different Clauses.
-- (A) WHERE Clause – To Filter Rows.
SELECT * FROM Student_Marks
WHERE marks > 80;
-- Shows Students who Scored more than 80.
-- (B) ORDER BY Clause – To Sort Results.
SELECT student_name, marks
FROM Student_Marks
ORDER BY marks DESC;
-- Displays Students in Descending Order of Marks.
-- (C) GROUP BY Clause – To Group Data.
SELECT course, AVG(marks) AS average_marks
FROM Student_Marks
GROUP BY course;
-- Displays Average Marks per Course.
-- (D) HAVING Clause – Condition on Grouped Data.
SELECT course, AVG(marks) AS average_marks
FROM Student_Marks
GROUP BY course
HAVING AVG(marks) > 75;
-- Shows only those Courses where Average Marks > 75.