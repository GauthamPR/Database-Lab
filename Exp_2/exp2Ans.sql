clear screen;

SELECT * FROM employee;

SELECT * FROM account WHERE balance < 1000;

SELECT customer_name FROM customer WHERE customer_city = 'BANGALORE';

SELECT COUNT(*) AS number_of_tuples FROM customer;

SELECT customer_street, customer_city FROM customer WHERE customer_name = 'JOHN';

SELECT * FROM customer WHERE LENGTH(customer_name) = 4 AND REGEXP_LIKE(customer_name, 'E$');

SELECT COUNT(*) FROM loan;

SELECT * FROM customer WHERE REGEXP_LIKE (customer_street, '.*NAGAR.*');

SELECT * FROM employee WHERE salary > 1400 AND branch_name != 'MUMBAI';

SELECT AVG(salary) AS avg_salary FROM employee;
/*10*/

SELECT account_number, balance FROM account 
WHERE 
branch_name = 'KOLKATA' 
AND 
balance > 1000;

SELECT branch_name FROM branch WHERE assets > 1000000 AND assets < 2500000;

SELECT COUNT(*) FROM account GROUP BY branch_name;

SELECT borrower.customer_name FROM borrower
    INNER JOIN loan ON loan.loan_number=borrower.loan_number
    INNER JOIN customer ON customer.customer_name=borrower.customer_name;
    
SELECT customer_name FROM depositer
MINUS
SELECT customer_name FROM borrower;

SELECT customer_name FROM borrower
    INNER JOIN loan ON loan.loan_number=borrower.loan_number
    WHERE loan.branch_name='DELHI';
    
SELECT branch_name FROM branch 
WHERE assets>SOME (SELECT assets from branch 
WHERE branch_city='BANGALORE');
    
SELECT employee_name FROM employee
    WHERE to_char(dob, 'MONTH')='JANUARY  ';
    
SELECT employee_name FROM employee
    WHERE ROUND(MONTHS_BETWEEN(sysdate, dob)/12) > 30;
    
SELECT employee_name,to_char(dob, 'Month') FROM employee;








SELECT employee_name FROM employee WHERE max(dob);