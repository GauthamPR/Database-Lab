set verify off;
set serveroutput on;

SELECT * FROM employee;

CREATE OR REPLACE PROCEDURE incr() IS
DECLARE
    p_id employee.id%type;
    p_salary employee.salary%type;
BEGIN
    SELECT id, salary INTO p_id, p_salary FROM employee WHERE salary > 10000;
    UPDATE employee
        SET salary = salary + ((salary/100)*6)
        WHERE id=p_id;
END;
/

SELECT * FROM employee;