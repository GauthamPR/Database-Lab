set serveroutput on;
SELECT * FROM account;
DECLARE
    p_account_number INT;
    p_balance FLOAT;
BEGIN
    p_account_number := &p_account_number;
    SELECT balance INTO p_balance FROM account WHERE p_account_number=account_number;
    IF (p_balance>300) THEN
        UPDATE account
        SET balance = balance-100
        WHERE account_number=p_account_number;
        dbms_output.put_line('Updated account balance');
    END IF;
END;
/

SELECT * from account;