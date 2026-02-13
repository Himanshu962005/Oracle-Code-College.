/* Write a PL/SQL Program to Practice for Implicit and Explicit Cursors. */
-- Step 1: Create a Table — EMP_DEMO.
CREATE TABLE Emp_Demo (
employee_id NUMBER,
first_name VARCHAR2(50),
department_id NUMBER
);
-- Step 2: Insert Sample Records.
INSERT INTO Emp_Demo VALUES (1, 'Himanshu', 10);
INSERT INTO Emp_Demo VALUES (2, 'Divya', 20);
INSERT INTO Emp_Demo VALUES (3, 'Prashant', 10);
INSERT INTO Emp_Demo VALUES (4, 'Laxmi', 30);
COMMIT;
-- Step 3: Practice for Implicit Cursors.
SET SERVEROUTPUT ON;
DECLARE
    v_dept_id employees.department_id%TYPE := 10;
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM employees
    WHERE department_id = v_dept_id;
    DBMS_OUTPUT.PUT_LINE('Number of Employees in Department ' || v_dept_id || ' is : ' || v_count);
    IF SQL%FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Implicit Cursor Executed Successfully.');
END IF;
    DBMS_OUTPUT.PUT_LINE('Rows Processed : ' || SQL%ROWCOUNT);
END;
/
-- Step 4: Practice for Explicit Cursors.
SET SERVEROUTPUT ON;
DECLARE
    v_emp_id   emp_demo.employee_id%TYPE;
    v_emp_name emp_demo.first_name%TYPE;
    CURSOR c_emp IS
    SELECT employee_id, first_name
    FROM   emp_demo
    WHERE  department_id = 10;
BEGIN
    OPEN c_emp;
    LOOP
    FETCH c_emp INTO v_emp_id, v_emp_name;
    EXIT WHEN c_emp%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Employee ID : ' || v_emp_id || ' | Name : ' || v_emp_name);
END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total Rows Fetched : ' || c_emp%ROWCOUNT);
    CLOSE c_emp;
END;
/
-- Oracle DataBase Completed.