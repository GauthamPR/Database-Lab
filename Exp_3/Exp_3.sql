SELECT employee.employee_name, employee.street, employee.city FROM employee
    INNER JOIN works ON employee.employee_name=works.employee_name
    INNER JOIN company ON company.company_name=works.company_name
    WHERE 
        works.company_name='UNIVERSAL Corporation'
        AND
        works.salary>10000;
        
SELECT employee.employee_name FROM employee
    INNER JOIN works ON works.employee_name=employee.employee_name
    INNER JOIN company ON works.company_name=company.company_name
    WHERE
        employee.city=company.city;
    
SELECT * FROM manages
    INNER JOIN employee emp ON manages.employee_name=emp.employee_name
    INNER JOIN employee man ON manages.manager_name=man.employee_name
    WHERE emp.city=man.city;

SELECT * FROM employee
    INNER JOIN works ON employee.employee_name=works.employee_name
    WHERE REGEXP_LIKE (company_name, '[^(ABC Corporation)]');

SELECT * FROM works
    WHERE salary > ALL(
        SELECT salary FROM works
        WHERE company_name='GOOGLE Corporation'
);

SELECT * FROM works w1
WHERE salary > (
    SELECT AVG(salary) FROM works w2
    WHERE w1.company_name=w2.company_name
);

SELECT company_name FROM works
GROUP BY company_name
HAVING AVG(salary) < = ALL(
    SELECT AVG(salary) FROM works
    GROUP BY company_name
);

SELECT company_name FROM works
GROUP BY company_name
HAVING count(*) >= ALL(
    SELECT count(*) FROM works
    GROUP BY company_name
);

SELECT company_name FROM works
GROUP BY company_name
HAVING AVG(salary) > ALL(
    SELECT AVG(salary) FROM works
    WHERE company_name = 'GOOGLE Corporation'
);
