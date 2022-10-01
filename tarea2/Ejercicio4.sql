create table departamento(
    depto_cod VARCHAR(5),
    depto_nombre VARCHAR(25),
     num_empleados VARCHAR(25)

);






SET SERVEROUTPUT ON
DECLARE
        depto_cod departamento.Departamento_id%TYPE:=10;
        depto_nombre departamento.Departamento_name%TYPE;
         num_empleados NUMBER;
BEGIN
        SELECT Departamento_name INTO depto_nombre FROM 
        departamento WHERE Departamento_id=depto_cod;
        SELECT COUNT(*) INTO num_empleados FROM departamento WHERE 
        Departamento_id=depto_codO;
        DBMS_OUTPUT.PUT_LINE('El departamento: '||depto_nombre||' tiene '||num_empleados||' empleados’);
END;
