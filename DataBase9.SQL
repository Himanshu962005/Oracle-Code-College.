/* Create a new Database in Oracle/SQL Server having at least Five Tables for the Library Management System. */
-- Step 1: Create Schema (User).
-- Create User/Schema for Library Management System.
CREATE USER Library_User IDENTIFIED BY Lib123;
-- Grant Necessary Privileges.
GRANT CONNECT, RESOURCE, CREATE SESSION, CREATE TABLE TO Library_User;
-- Switch to this Schema.
ALTER SESSION SET CURRENT_SCHEMA = Library_User;
-- Step 2: Create Tables.
/* We’ll Create Five Main Tables:
1. Members – Library Members (Students/Staff).
2. Books – Book Details.
3. Authors – Author Information.
4. Issued_Books – Records of Issued/Borrowed Books.
5. Staff – Librarians and Assistants. */
-- Table 1: MEMBERS.
CREATE TABLE Members (
member_id NUMBER PRIMARY KEY,
member_name VARCHAR2(50) NOT NULL,
contact_no VARCHAR2(15),
email VARCHAR2(100),
address VARCHAR2(100),
membership_date DATE DEFAULT SYSDATE
);
-- Step 3: Insert Sample Data.
-- Insert Data into MEMBERS.
INSERT INTO Members VALUES (1, 'Himanshu Karwa', '9876543210', 'Valthimanshu@gmail.com', 'Delhi', '10-JAN-2024');
INSERT INTO Members VALUES (2, 'Divya Pandey', '9123456789', 'riya@gmail.com', 'Mumbai', '15-JAN-2024');
INSERT INTO Members VALUES (3, 'Prashant Verma', '9988776655', 'rahul@gmail.com', 'Chennai', '20-JAN-2024');
-- Step 4: Display Members Records.
SELECT * FROM Members;
-- Table 2: AUTHORS.
CREATE TABLE Authors (
author_id NUMBER PRIMARY KEY,
author_name VARCHAR2(50) NOT NULL,
country VARCHAR2(50));
-- Insert Data into AUTHORS.
INSERT INTO Authors VALUES (1, 'Chetan Bhagat', 'India');
INSERT INTO Authors VALUES (2, 'J.K. Rowling', 'United Kingdom');
INSERT INTO Authors VALUES (3, 'George R.R. Martin', 'United States');
-- Display Authors Records.
SELECT * FROM Authors;
-- Table 3: BOOKS.
-- Each Book Belongs to an Author.
CREATE TABLE Books (
book_id NUMBER PRIMARY KEY,
title VARCHAR2(100) NOT NULL,
author_id NUMBER NOT NULL,
category VARCHAR2(50),
price NUMBER(10,2),
available_copies NUMBER(3),
CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
-- Insert Data into BOOKS.
INSERT INTO Books VALUES (1, 'Half Girlfriend', 1, 'Romance', 350.00, 10);
INSERT INTO Books VALUES (2, 'Harry Potter', 2, 'Fantasy', 600.00, 5);
INSERT INTO Books VALUES (3, 'Game of Thrones', 3, 'Fantasy', 750.00, 7);
-- Display Books Records.
SELECT * FROM Books;
-- Table 4: STAFF.
CREATE TABLE Staff (
staff_id NUMBER PRIMARY KEY,
staff_name VARCHAR2(50) NOT NULL,
designation VARCHAR2(30),
salary NUMBER(10,2),
contact_no VARCHAR2(15),
hire_date DATE DEFAULT SYSDATE
);
-- Insert Data into STAFF.
INSERT INTO Staff VALUES (1, 'Himanshu Karwa', 'Librarian', 35000.00, '9876501234', '01-JAN-2023');
INSERT INTO Staff VALUES (2, 'Divya Pandey', 'Assistant', 25000.00, '9123009876', '10-FEB-2023');
INSERT INTO Staff VALUES (3, 'Prashant Verma', 'Manager', 40000.00, '9988776622', '20-MAR-2023');
-- Display Staff Records.
SELECT * FROM Staff;
-- Table 5: ISSUED_BOOKS.
-- This Table Links Members, Books, and Staff (Who Issued the Book).
CREATE TABLE Issued_Books (
issue_id NUMBER PRIMARY KEY,
member_id NUMBER NOT NULL,
book_id NUMBER NOT NULL,
staff_id NUMBER NOT NULL,
issue_date DATE NOT NULL,
return_date DATE,
CONSTRAINT fk_member FOREIGN KEY (member_id) REFERENCES Members(member_id),
CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES Books(book_id),
CONSTRAINT fk_staff FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);
-- Insert Data into ISSUED_BOOKS.
INSERT INTO Issued_Books VALUES (1, 1, 1, 1, '15-JAN-2024', '25-JAN-2024');
INSERT INTO Issued_Books VALUES (2, 2, 2, 2, '18-JAN-2024', '28-JAN-2024');
INSERT INTO Issued_Books VALUES (3, 3, 3, 3, '20-JAN-2024', '30-JAN-2024');
-- Display Issued_Books Records.
SELECT * FROM Issued_Books;