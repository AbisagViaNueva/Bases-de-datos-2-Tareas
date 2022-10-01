


DECLARE 
    nombre VARCHAR (25);
    apellido1 VARCHAR(25);
    apellido2 VARCHAR(25);
    iniciales VARCHAR(25);

BEGIN 
    nombre:='Richard';
    apellido1:='Fiallos';
    apellido2:='Molina';
    
    iniciales:=SUBSTR(nombre,1,1)||'.'||SUBSTR(apellido1,1,1)||'.'||SUBSTR(apellido2,1,1)||'.';
    DBMS_OUTPUT.PUT_LINE(UPPER(iniciales));
END;