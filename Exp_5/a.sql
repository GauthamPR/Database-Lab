set verify off;
set serveroutput on;

CREATE OR REPLACE PROCEDURE findMin(x NUMBER, y NUMBER) IS
BEGIN
    IF (x < y) THEN
        dbms_output.put_line('MIN IS:' || x);
    ELSE
        dbms_output.put_line('MIN IS:' || y);
    END IF;
END;
/