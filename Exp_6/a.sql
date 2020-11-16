CREATE OR REPLACE FUNCTION totalEntries
RETURN INT IS
    total INT := 0;
BEGIN
    SELECT count(*) INTO total FROM employee;
    RETURN total;
END;
/