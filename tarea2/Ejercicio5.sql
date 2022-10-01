DECLARE
 Maximo NUMBER;
 Minimo NUMBER;
 Diff NUMBER;
BEGIN
    SELECT MAX(salario),MIN(salario) INTO Maximo,Minimo
    FROM empleadostarea2;
    DBMS_OUTPUT.PUT_LINE('Salario maximo:'||maximo);
    DBMS_OUTPUT.PUT_LINE('Salario minimo:'||minimo);
    diff:=maximo-minimo;
    DBMS_OUTPUT.PUT_LINE('Diferencia:'||diff);
END;