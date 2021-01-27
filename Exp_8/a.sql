SELECT * FROM book;
SELECT * FROM circulation;
CREATE OR REPLACE TRIGGER allow_entry
BEFORE INSERT ON book
FOR EACH ROW
DECLARE
    p_avg_cost book.cost%type;
BEGIN
    SELECT AVG(COST) INTO p_avg_cost FROM book
        LEFT OUTER JOIN circulation ON book.book_no = circulation.book_no
        WHERE circulation.book_no IS NULL;
    dbms_output.put_line('Avg: ' || p_avg_cost);
    IF p_avg_cost > :NEW.cost THEN
        raise_application_error(-20000
            , 'Cost less than average value of available');
    END IF;
END;
/
SHOW ERRORS TRIGGER allow_entry