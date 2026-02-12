/* Write a PL/SQL Program to Find the Factorial Value of Any Entered Number. */
SET SERVEROUTPUT ON;
SET VERIFY OFF;
DECLARE
    N NUMBER;
    Fact NUMBER := 1;
BEGIN
    N := &N;
    FOR i IN 1..n LOOP
     Fact := Fact * i;
    END LOOP;
DBMS_OUTPUT.PUT_LINE('Factorial of ' || N || ' is : ' || Fact);
END;
/