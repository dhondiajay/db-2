DECLARE
    A NUMBER;
    B NUMBER;
    C NUMBER;

    FUNCTION findMax(X IN NUMBER, Y IN NUMBER) RETURN NUMBER 
    IS
        Z NUMBER;
    BEGIN
        IF X > Y THEN
            Z := X;
        ELSE
            Z := Y;
        END IF;
        
        RETURN Z;
    END;
/
--output: funtion created
BEGIN
    A := 23;
    B := 45;
    C := findMax(A, B);

    DBMS_OUTPUT.PUT_LINE('Maximum of (23,45): ' || C);
END; 
/
--output:maximum of (23,45): 45
--PL/SQL PROCEDURE SUCCESSFULLY COMPLETED
