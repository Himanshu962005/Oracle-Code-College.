/* Create a new Database in Oracle/SQL Server having at least Four Tables for Covid Vaccination Management System. */
-- Step 1: Create Schema (User).
-- Create New Schema for the System.
CREATE USER Covid_User IDENTIFIED BY Covid123;
-- Grant Necessary Privileges.
GRANT CONNECT, RESOURCE, CREATE SESSION, CREATE TABLE TO covid_user;
-- Switch to Schema.
ALTER SESSION SET CURRENT_SCHEMA = covid_user;
-- Step 2: Create Tables.
/* We’ll Make Four Main Tables:
1. Citizens → People Getting Vaccinated.
2. Vaccines → Information About Vaccine Brands.
3. Centers → Vaccination Centers.
4. Vaccination_Records → Actual Vaccination Records (Linking All Three). */
-- Table 1: CITIZENS.
CREATE TABLE Citizens (
citizen_id NUMBER PRIMARY KEY,
citizen_name VARCHAR2(50) NOT NULL,
age NUMBER(3) NOT NULL,
gender VARCHAR2(10),
contact_no VARCHAR2(15),
address VARCHAR2(100)
);
-- Step 3: Insert Sample Data.
-- Insert Data into CITIZENS.
INSERT INTO Citizens VALUES (1, 'Himanshu Karwa', 20, 'Male', '9876543210', 'Delhi');
INSERT INTO Citizens VALUES (2, 'Divya Pandey', 20, 'Female', '9123456789', 'Mumbai');
INSERT INTO Citizens VALUES (3, 'Prashant Verma', 20, 'Male', '9988776655', 'Chennai');
-- Step 4: Display Citizens Records.
SELECT * FROM Citizens;
-- Table 2: VACCINES.
CREATE TABLE Vaccines (
vaccine_id NUMBER PRIMARY KEY,
vaccine_name VARCHAR2(50) NOT NULL,
manufacturer VARCHAR2(50),
doses_required NUMBER(1)
);
-- Insert Data into VACCINES.
INSERT INTO Vaccines VALUES (1, 'Covaxin', 'Bharat Biotech', 2);
INSERT INTO Vaccines VALUES (2, 'Covishield', 'Serum Institute', 2);
INSERT INTO Vaccines VALUES (3, 'Sputnik V', 'Dr. Reddy Labs', 2);
-- Display Vaccines Records.
SELECT * FROM Vaccines;
-- Table 3: CENTERS.
CREATE TABLE Centers (
center_id NUMBER PRIMARY KEY,
center_name VARCHAR2(50) NOT NULL,
location VARCHAR2(100),
contact_no VARCHAR2(15)
);
-- Insert Data into CENTERS.
INSERT INTO Centers VALUES (1, 'City Health Center', 'Connaught Place, Delhi', '01123456789');
INSERT INTO Centers VALUES (2, 'Sunrise Hospital', 'Andheri, Mumbai', '02298765432');
INSERT INTO Centers VALUES (3, 'Apollo Clinic', 'T Nagar, Chennai', '04422334455');
-- Display Centers Records.
SELECT * FROM Centers;
-- Table 4: VACCINATION_RECORDS.
-- This Table Connects Citizens, Vaccines, and Centers.
CREATE TABLE Vaccination_Records (
record_id NUMBER PRIMARY KEY,
citizen_id NUMBER NOT NULL,
vaccine_id NUMBER NOT NULL,
center_id NUMBER NOT NULL,
dose_number NUMBER(1),
vaccination_date DATE,
CONSTRAINT fk_citizen FOREIGN KEY (citizen_id) REFERENCES Citizens(citizen_id),
CONSTRAINT fk_vaccine FOREIGN KEY (vaccine_id) REFERENCES Vaccines(vaccine_id),
CONSTRAINT fk_center FOREIGN KEY (center_id) REFERENCES Centers(center_id)
);
-- Insert Data into VACCINATION_RECORDS.
INSERT INTO Vaccination_Records VALUES (1, 1, 1, 1, 1, '10-JAN-2024');
INSERT INTO Vaccination_Records VALUES (2, 1, 1, 1, 2, '10-FEB-2024');
INSERT INTO Vaccination_Records VALUES (3, 2, 2, 2, 1, '12-JAN-2024');
-- Display Vaccination_Records Records.
SELECT * FROM Vaccination_Records;