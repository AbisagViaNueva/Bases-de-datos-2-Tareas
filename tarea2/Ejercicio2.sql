DECLARE 
        numero int;
        resultado int ;
BEGIN 
        numero:=10;
        resultado:= MOD(numero, 2);
        if resultado=0 THEN
            DBMS_OUTPUT.PUT_LINE('El Numero Es Par');
            else
            DBMS_OUTPUT.PUT_LINE('El Numero Es Impar');
        end if;
END;
    