create or replace FUNCTION CREAR_REGION (nombre varchar2) 
RETURN NUMBER IS
regiones NUMBER;
NOM_REGION VARCHAR2(100);
BEGIN
SELECT REGION_NAME INTO NOM_REGION FROM REGIONS 
WHERE REGION_NAME=UPPER(NOMBRE);
raise_application_error(-20321,'Esta regi�n ya existe!');
EXCEPTION
WHEN NO_DATA_FOUND THEN
SELECT MAX(REGION_ID)+1 INTO REGIONES from REGIONS;
INSERT INTO REGIONS (region_id,region_name) VALUES 
(regiones,upper(nombre));
RETURN REGIONES;
END;
/
DECLARE
N_REGION NUMBER;
BEGIN
N_REGION:=crear_region('NORMANDIA');
DBMS_OUTPUT.PUT_LINE('EL NUMERO ASIGNADO ES:'||N_REGION);
END;
/