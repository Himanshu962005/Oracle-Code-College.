/* Write a PL/SQL Program for Swapping of Two Numbers. */
SET SERVEROUTPUT ON;
SET VERIFY OFF;
DECLARE
    A NUMBER;
    B NUMBER;
    Temp NUMBER;
BEGIN
    A := &A;
    B := &B;
    DBMS_OUTPUT.PUT_LINE('Before Swapping : A = ' || A || '  B = ' || B);
    Temp := A;
    A := B;
    B := Temp;
    DBMS_OUTPUT.PUT_LINE('After Swapping : A = ' || A || '  B = ' || B);
END;
/