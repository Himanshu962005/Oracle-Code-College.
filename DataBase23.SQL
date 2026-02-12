/* Write a PL/SQL Program to Print the First Ten Natural Numbers. */
SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('First 10 Natural Numbers : ');
    FOR i IN 1..10 LOOP
     DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/