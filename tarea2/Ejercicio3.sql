
Create table empleadosTarea2(
    Nombre VARCHAR(25),
    salario_mx VARCHAR(25),
    salario_min VARCHAR(25),
    salario VARCHAR(25),
    Department_id varchar (5)
);




SET SERVEROUTPUT ON
DECLARE      
        salario_mx 
        empleadosTarea2.salario%TYPE;
BEGIN
        SELECT MAX(salario) INTO salario_mx
        FROM empleadostarea2
         WHERE department_id=100;
          DBMS_OUTPUT.PUT_LINE('el salario maximo es de: '||salario_mx);
END;