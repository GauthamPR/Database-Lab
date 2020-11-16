SELECT * FROM employee;
DECLARE
    total INT := 0;
BEGIN
    total := totalEntries();
    dbms_output.put_line('TOTAL: ' || total);
END;
/