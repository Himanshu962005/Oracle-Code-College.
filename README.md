# Oracle-Code-College.
Oracle Database is a high-performance, enterprise-grade Relational Database Management System (RDBMS) developed by Oracle Corporation. It is used to store, manage, and retrieve large volumes of structured data, and uses SQL along with PL/SQL (Procedural Language/SQL) for advanced data processing and business logic.

## ✨ Features.
* Data stored in structured tables (rows and columns).
* Supports relationships using Primary Keys and Foreign Keys.
* Ensures data integrity through ACID properties.
* Supports PL/SQL for stored procedures, functions, triggers, and packages.

## ⚙️ Uses.
* Store and manage large-scale enterprise data.
* Build backend databases for banking, finance, and business applications.
* Perform complex queries, joins, and reporting.
* Automate business logic using stored procedures and triggers.

## 🧠 Example.
```SQL.
CREATE TABLE Students (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    course VARCHAR2(50)
);
INSERT INTO Students (id, name, course) VALUES (1, 'Himanshu', 'Computer Science');
SELECT * FROM Students WHERE name = 'Himanshu';
```

```PL/SQL Example.
sqlDECLARE
    v_name VARCHAR2(50) := 'Himanshu';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello ' || v_name);
END;
/
```

## 🛠️ Technologies.
* Database: Oracle Database (Oracle 19c, 21c, 23c).
* Language: SQL, PL/SQL.
* Tools: Oracle SQL Developer, SQL*Plus, Toad for Oracle.

## 🎯 Conclusion.
Oracle Database is one of the most powerful and widely used enterprise RDBMS technologies, essential for building secure, scalable, and high-performance database systems used by large organizations worldwide.
