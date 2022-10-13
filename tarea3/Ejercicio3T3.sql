CREATE OR REPLACE PROCEDURE CALCULADORA(num1 in varchar2,
                                        num2 in varchar2,
                                        operacion in varchar2
                                        )
IS 
--declaracion de variables
resultado number;

BEGIN
        if operacion='SUMA' then    
        resultado := num1 +num2;
        DBMS_OUTPUT.PUT_LINE('Resultado de suma: ' || resultado);

      ELSIF
      
        operacion='RESTA' then
        resultado := num1 - num2;     
        DBMS_OUTPUT.PUT_LINE('Resultado de resta: ' || resultado);

      ELSIF 
      
      operacion='MULTIPLICACION' THEN
        resultado := num1 *num2;  
        DBMS_OUTPUT.PUT_LINE('Resultado de multiplicación: ' || resultado);

      ELSIF
    
        operacion='DIVISION' then
        resultado := num1 / num2;
        DBMS_OUTPUT.PUT_LINE('Resultado de división: ' || resultado);
        

    
    end if;
    
   

END;


Declare



begin



end;


CREATE TABLE
EMPLOYEES_COPIA
            (EMPLOYEE_ID NUMBER (6,0) PRIMARY KEY,
            FIRST_NAME VARCHAR2(20 BYTE),
            LAST_NAME VARCHAR2(25 BYTE),
            EMAIL VARCHAR2(25 BYTE),
            PHONE_NUMBER VARCHAR2(20 BYTE),
            HIRE_DATE DATE,
            JOB_ID VARCHAR2(10 BYTE),
            SALARY NUMBER(8,2),
            COMMISSION_PCT NUMBER(2,2),
            MANAGER_ID NUMBER(6,0),
            DEPARTMENT_ID NUMBER(4,0)
 );