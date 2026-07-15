# Oracle-Code-College.
Oracle Database and MySQL are two of the most widely used Relational Database Management Systems (RDBMS), used to store and manage structured data in the form of tables with rows and columns. Both use SQL (Structured Query Language) to define, query, and manipulate data, and enforce relationships between tables using keys.

## ✨ Features.
* Data stored in structured tables (rows and columns).
* Supports relationships using Primary Keys and Foreign Keys.
* Ensures data integrity through ACID properties.
* Supports SQL for querying, joins, stored procedures, and transactions.

## ⚙️ Uses.
* Store and manage structured business data.
* Build backend databases for web and enterprise applications.
* Perform complex queries, joins, and reporting.
* Maintain data consistency across multiple tables.

## 🧠 Example.
```Oracle Database Code.
Oracle.
CREATE TABLE Students (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    course VARCHAR2(50)
);
INSERT INTO Students (id, name, course) VALUES (1, 'Himanshu', 'Computer Science');
SELECT * FROM Students WHERE name = 'Himanshu';
```

```MySQL Database Code.
MySQL.
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50)
);
INSERT INTO Students (id, name, course) VALUES (1, 'Himanshu', 'Computer Science');
SELECT * FROM Students WHERE name = 'Himanshu';
```

## 🛠️ Technologies.
* Databases: Oracle Database, MySQL.
* Query Language: SQL, PL/SQL (Oracle).
* Tools: Oracle SQL Developer, MySQL Workbench, phpMyAdmin, SQL*Plus.

## 🎯 Conclusion.
Oracle Database and MySQL are two of the most trusted and widely adopted RDBMS technologies, essential for building reliable, structured, and scalable database systems used across enterprises and web applications worldwide.
