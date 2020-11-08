set serveroutput on
DECLARE
    radius FLOAT := &radius;
    area FLOAT;
BEGIN
    area := 3.14*radius*radius;
    INSERT INTO circlearea(radius, area) VALUES (radius, area);
    dbms_output.put_line('Radius: ' || radius || '  Area: ' || area);
END;
/

SELECT * FROM circlearea;