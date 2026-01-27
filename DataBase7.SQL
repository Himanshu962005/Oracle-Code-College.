/* Create a new Database in Oracle/SQL Server having at least Five Tables for the Hotel Management System. */
-- Step 1: Create the Database (Schema).
-- Create a New User (Schema) for Hotel Management System.
CREATE USER Hotel_User IDENTIFIED BY Password123;
-- Grant Necessary Privileges.
GRANT CONNECT, RESOURCE, CREATE SESSION, CREATE TABLE, CREATE SEQUENCE TO hotel_user;
-- Switch to the User.
ALTER SESSION SET CURRENT_SCHEMA = Hotel_User;
-- Step 2: Create Tables.
-- Table 1: CUSTOMERS.
-- Stores Information about Hotel Guests.
CREATE TABLE Customers (
customer_id NUMBER PRIMARY KEY,
first_name VARCHAR2(50) NOT NULL,
last_name VARCHAR2(50) NOT NULL,
email VARCHAR2(100) UNIQUE,
phone_number VARCHAR2(15),
address VARCHAR2(200)
);
-- Step 3: Insert Sample Data.
-- Insert Data into CUSTOMERS.
INSERT INTO Customers VALUES (1, 'Himanshu', 'Karwa', 'Valthimanshu@gmail.com', '9876543210', 'Delhi');
INSERT INTO Customers VALUES (2, 'Divya', 'Pandey', 'riya@gmail.com', '9123456789', 'Mumbai');
INSERT INTO Customers VALUES (3, 'Prashant', 'Verma', 'rajk@gmail.com', '9988776655', 'Chennai');
-- Step 4: Display Customers Records.
SELECT * FROM Customers;
-- Table 2: ROOMS.
-- Stores Details about Rooms in the Hotel.
CREATE TABLE Rooms (
room_id NUMBER PRIMARY KEY,
room_number VARCHAR2(10) NOT NULL UNIQUE,
room_type VARCHAR2(20) NOT NULL, -- e.g., Single, Double, Suite
price_per_night NUMBER(10,2) NOT NULL,
status VARCHAR2(20) DEFAULT 'Available' -- Available, Occupied, Maintenance
);
-- Insert Data into ROOMS.
INSERT INTO Rooms VALUES (101, 'A101', 'Single', 1500.00, 'Available');
INSERT INTO Rooms VALUES (102, 'A102', 'Double', 2500.00, 'Occupied');
INSERT INTO Rooms VALUES (103, 'A104', 'Single', 1600.00, 'Maintenance');
-- Display Rooms Records.
SELECT * FROM Rooms;
-- Table 3: BOOKINGS.
-- Stores Booking Information and Links Customers to Rooms.
CREATE TABLE Bookings (
booking_id NUMBER PRIMARY KEY,
customer_id NUMBER NOT NULL,
room_id NUMBER NOT NULL,
check_in_date DATE NOT NULL,
check_out_date DATE NOT NULL,
total_amount NUMBER(10,2),
CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),CONSTRAINT fk_room FOREIGN KEY (room_id) REFERENCES Rooms(room_id));
-- Insert Data into BOOKINGS.
INSERT INTO Bookings VALUES (1, 1, 101, '10-JAN-2025', '15-JAN-2025', 7500.00);
INSERT INTO Bookings VALUES (2, 2, 102, '12-JAN-2025', '14-JAN-2025', 5000.00);
INSERT INTO Bookings VALUES (3, 3, 103, '05-FEB-2025', '08-FEB-2025', 15000.00);
-- Display Bookings Records.
SELECT * FROM Bookings;
-- Table 4: EMPLOYEES.
-- Stores Hotel Staff Information.
CREATE TABLE Employees (
employee_id NUMBER PRIMARY KEY,
first_name VARCHAR2(50) NOT NULL,
last_name VARCHAR2(50) NOT NULL,
position VARCHAR2(50), -- e.g., Manager, Receptionist, Housekeeping
salary NUMBER(10,2),
phone_number VARCHAR2(15),
hire_date DATE DEFAULT SYSDATE
);
-- Insert Data into EMPLOYEES.
INSERT INTO Employees VALUES (1, 'Himanshu', 'Karwa', 'Manager', 60000.00, '9876543210', '10-JAN-2020');
INSERT INTO Employees VALUES (2, 'Divya', 'Pandey', 'Receptionist', 30000.00, '9123456789', '12-MAR-2021');
INSERT INTO Employees VALUES (3, 'Prashant', 'Verma', 'Housekeeping', 25000.00, '9988776655', '05-FEB-2022');
-- Display Employees Records.
SELECT * FROM Employees;
-- Table 5: SERVICES.
-- Stores Additional Services Availed by Customers (Like Laundry, Spa, Room Service).
CREATE TABLE Services (
service_id NUMBER PRIMARY KEY,
service_name VARCHAR2(50) NOT NULL,
service_price NUMBER(10,2) NOT NULL
);
-- Insert Data into SERVICES.
INSERT INTO Services VALUES (1, 'Room Service', 500.00);
INSERT INTO Services VALUES (2, 'Laundry', 200.00);
INSERT INTO Services VALUES (3, 'Spa', 1200.00);
-- Display Services Records.
SELECT * FROM Services;