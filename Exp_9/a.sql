set serveroutput on;

CREATE OR REPLACE PACKAGE db_functions AS
    PROCEDURE check_id(ui_eid employee.eid%TYPE);
    PROCEDURE inc_sal;
END db_functions;
/

CREATE OR REPLACE PACKAGE BODY db_functions AS
    PROCEDURE check_id(ui_eid employee.eid%TYPE) IS
        p_eid employee.eid%TYPE;
        BEGIN
        SELECT eid INTO p_eid FROM employee
            WHERE eid = ui_eid;
        dbms_output.put_line('VALID ID');
    EXCEPTION
      WHEN no_data_found THEN
        dbms_output.put_line('INVALID ID');
    END check_id;

    PROCEDURE inc_sal IS
        BEGIN
        UPDATE employee
            SET salary = salary + ((salary / 100)*5)
            WHERE salary < 10000;
    END inc_sal;
END db_functions;
/


SHOW ERRORS PACKAGE BODY db_functions;
SHOW ERRORS PACKAGE db_functions;