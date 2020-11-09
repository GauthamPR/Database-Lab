set verify off;
set serveroutput on;
SELECT * FROM employee;
DECLARE
    p_id INT;
    p_salary FLOAT;
BEGIN
    p_id := &p_id;
    SELECT salary INTO p_salary FROM employee WHERE p_id=id;
    dbms_output.put_line('EMPLOYEE FOUND');
    dbms_output.put_line('ID: ' || p_id || '  Salary: ' || p_salary);
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('NOT FOUND');
END;
/