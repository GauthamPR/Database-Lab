CREATE TABLE employee(
    employee_name varchar(30) PRIMARY KEY,
    street varchar(30),
    city varchar(30)
);

CREATE TABLE works(
    employee_name varchar(30) PRIMARY KEY,
    company_name varchar(30),
    salary int,
    FOREIGN KEY (employee_name) REFERENCES employee(employee_name)
);

CREATE TABLE company(
    company_name varchar(30) PRIMARY KEY,
    city varchar(30)
);

CREATE TABLE manages(
    employee_name varchar(30) PRIMARY KEY,
    manager_name varchar(30),
    FOREIGN KEY (employee_name) REFERENCES employee(employee_name)
);
    
INSERT INTO employee(
    employee_name,
    street,
    city
) VALUES (
    'SHREYAS',
    'GANDHI NAGAR',
    'BANGALORE'
);

INSERT INTO employee(
    employee_name,
    street,
    city
) VALUES (
    'SHIKHAR',
    'CAPTAIN STREET',
    'MUMBAI'
);

INSERT INTO employee(
    employee_name,
    street,
    city
) VALUES (
    'ROHIT',
    'HIT NAGAR',
    'MUMBAI'
);

INSERT INTO employee(
    employee_name,
    street,
    city
) VALUES (
    'BUMRAH',
    'YORKER NAGAR',
    'AHMEDABAD'
);

INSERT INTO employee(
    employee_name,
    street,
    city
) VALUES (
    'SAM',
    'TRIVANDRUM STREET',
    'KERALA'
);

INSERT INTO employee(
    employee_name,
    street,
    city
) VALUES (
    'RIO',
    'TRIVANDRUM STREET',
    'KERALA'
);

INSERT INTO works(
    employee_name,
    company_name,
    salary
) VALUES (
    'SHIKHAR',
    'UNIVERSAL Corporation', 
    40000
);

INSERT INTO works(
    employee_name,
    company_name,
    salary
) VALUES (
    'ROHIT',
    'ABC Corporation',
    35000
);

INSERT INTO works(
    employee_name,
    company_name,
    salary
) VALUES (
    'RIO',
    'GOOGLE Corporation',
    37500
);

INSERT INTO works(
    employee_name,
    company_name,
    salary
) VALUES (
    'SAM',
    'GOOGLE Corporation',
    20000
);

INSERT INTO works(
    employee_name,
    company_name,
    salary
) VALUES(
    'SHREYAS',
    'UNIVERSAL Corporation',
    30000
);

INSERT INTO company(
    company_name,
    city
) VALUES(
    'UNIVERSAL Corporation',
    'BANGALORE'
);

INSERT INTO company(
    company_name,
    city
) VALUES (
    'GOOGLE Corporation',
    'INDORE'
);

INSERT INTO company(
    company_name,
    city
) VALUES (
    'ABC Coporation',
    'LUCKNOW'
);

INSERT INTO manages(
    employee_name,
    manager_name
) VALUES(
    'SHREYAS',
    'SHIKHAR'
);

INSERT INTO manages(
    employee_name,
    manager_name
) VALUES(
    'RIO',
    'SAM'
);