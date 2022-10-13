DECLARE
CURSOR T3
IS SELECT first_name,last_name,salary from EMPLOYEES;
BEGIN
for i IN T3
LOOP
IF i.first_name='Peter' AND i.last_name='Tucker'
THEN
raise_application_error(-20300,'No se puede visualizar el salario de el jefe');
ELSE
DBMS_OUTPUT.PUT_LINE(i.first_name ||' ' || i.last_name || ': '|| i.salary || 
'DLS');
END IF;
END LOOP;
END;

SET SERVEROUTPUT ON
DECLARE
 CODIGO DEPARTMENTS.DEPARTMENT_ID%TYPE;
 CURSOR T3(COD DEPARTMENTS.DEPARTMENT_ID%TYPE ) IS 
SELECT COUNT(*) FROM employees
WHERE DEPARTMENT_ID=COD;
NUM_EMPLE NUMBER;
BEGIN
CODIGO:=10;
OPEN T3(CODIGO);
FETCH T3 INTO NUM_EMPLE;
DBMS_OUTPUT.PUT_LINE('numero de empleados de ' ||codigo||' es 
'||num_emple);
end;


SET SERVEROUTPUT ON
DECLARE
CURSOR T3 IS SELECT * FROM employees for update;
begin
for EMPLEADO IN C1 LOOP
IF EMPLEADO.SALARY > 8000 THEN
UPDATE EMPLOYEES SET SALARY=SALARY*1.02
WHERE CURRENT OF T3;
ELSE
UPDATE EMPLOYEES SET SALARY=SALARY*1.03
WHERE CURRENT OF T3;
END IF;
END LOOP;
COMMIT;
END ;
/
