set verify off;
set serveroutput on;

SELECT * FROM employee;

DECLARE
    p_id employee.id%type;
    p_salary employee.salary%type;
PROCEDURE incr IS
BEGIN
    SELECT id, salary INTO p_id, p_salary FROM employee WHERE salary > 10000;
    UPDATE employee
        SET salary = salary + ((salary/100)*6)
        WHERE id=p_id;
END;
BEGIN
    incr();
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No Such Employee');
    WHEN too_many_rows THEN
        dbms_output.put_line('Too Many Employees');
END;
/

SELECT * FROM employee;