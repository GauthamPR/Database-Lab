set serveroutput on;
DECLARE
    radius INT := 3;
    area FLOAT;
BEGIN
    WHILE radius < 8 LOOP
        area := 3.14 * radius * radius;
        dbms_output.put_line('Radius: ' || radius || '  Area: ' || area);
        radius := radius+1;
    END LOOP;
END;
/