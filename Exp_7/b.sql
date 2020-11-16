SELECT * FROM employee;
DECLARE
    error_city EXCEPTION;
    error_company EXCEPTION;
    error_age EXCEPTION;
    employee_ID employee.eid%type;
    p_city employee.ecity%type;
    p_age employee.eage%type;
    p_company employee.company%type;
BEGIN
    employee_ID := &employee_ID;
    IF employee_ID = 'E01' THEN
        RAISE error_city;
    END IF;
    IF employee_ID = 'E05' THEN
        RAISE error_company;
    END IF;
    RAISE error_age;
EXCEPTION
    WHEN error_city THEN
        SELECT ecity INTO p_city FROM employee WHERE eid = employee_ID;
        dbms_output.put_line('CITY: ' || p_city);
    WHEN error_company THEN
        SELECT company INTO p_company FROM employee WHERE eid = employee_ID;
        dbms_output.put_line('COMPANY: ' || p_company);
    WHEN error_age THEN
        SELECT eage INTO p_age FROM employee WHERE eid = employee_ID;
        dbms_output.put_line('AGE: ' || p_age);
END;
/
