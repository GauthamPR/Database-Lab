set verify off;
set serveroutput on;
SELECT * FROM employee;
DECLARE
    p_count INT := 0;
BEGIN
    FOR p_employee IN (SELECT * from employee)
    LOOP
        IF (p_employee.salary < 10000) THEN
            dbms_output.put_line('this');
            UPDATE employee
                SET salary = salary + 1000
                WHERE id=p_employee.id;
            p_count := p_count+1;
            dbms_output.put_line(p_employee.id || ' ' || p_employee.salary);
        END IF;
    END LOOP;
    dbms_output.put_line(p_count);
END;
/
SELECT * FROM employee;