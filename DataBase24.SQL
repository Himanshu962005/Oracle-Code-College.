/* Write a PL/SQL Program to Generate Even Series Upto Five Digits Starting From 2 and Sum All the Terms. */
SET SERVEROUTPUT ON;
DECLARE
    i NUMBER := 2;
    Total NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Even Numbers Up to 5 Digits (Starting From 2) : ');
    WHILE i <= 99998 LOOP
     DBMS_OUTPUT.PUT_LINE(i);
     Total := Total + i;
     i := i + 2; -- Move to Next Even Number.
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('--------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Sum of All Even Numbers Up to 5 Digits : ' || Total);
END;
/