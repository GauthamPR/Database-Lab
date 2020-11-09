set verify off;
set serveroutput on;
SELECT * FROM employee;
DECLARE
    p_count INT := 0;
BEGIN
    FOR p_employee IN (SELECT * from employee)
    LOOP
        IF (p_employee.salary < 10000) THEN
            UPDATE employee
                SET salary = salary + 1000
                WHERE id=p_employee.id;
            p_count := p_count+1;
        END IF;
    END LOOP;
    dbms_output.put_line('Number of Updated Users:' || p_count);
END;
/
SELECT * FROM employee;
rollback;