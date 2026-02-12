/* Write a PL/SQL Program for Addition of Two Numbers. */
SET SERVEROUTPUT ON;
DECLARE
    Num1 NUMBER := 10;
    Num2 NUMBER := 20;
    Total NUMBER;
BEGIN
    Total := Num1 + Num2;
    DBMS_OUTPUT.PUT_LINE('The Sum of  ' || Num1 || ' and ' || Num2 || ' is : ' || Total);
END;
/