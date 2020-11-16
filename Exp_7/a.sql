SELECT * FROM employee;
DECLARE
    employee_ID INT;
    p_name char(10);
    p_salary FLOAT;
BEGIN
    employee_ID := &employee_ID;
    SELECT emp_name, salary INTO p_name, p_salary FROM employee
        WHERE id=employee_ID;
    dbms_output.put_line('Name: ' || p_name || '    Salary: ' || p_salary);
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No such employee');
END;
/
