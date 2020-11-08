INSERT INTO branch (
    branch_name,
    branch_city,
    assets
) VALUES (
    'KERALA',
    'TRIVANDRUM',
    10
);

INSERT INTO branch (
    branch_name,
    branch_city,
    assets
) VALUES (
    'TAMIL NADU',
    'CHENNAI',
    15
);

INSERT INTO branch (
    branch_name,
    branch_city,
    assets
) VALUES (
    'KARNATAKA',
    'BANGALORE',
    20
);
INSERT INTO branch (
    branch_name,
    branch_city,
    assets
) VALUES (
    'MUMBAI',
    'ANDERI',
    23
);
INSERT INTO branch (
    branch_name,
    branch_city,
    assets
) VALUES (
    'KOLKATA',
    'BANGEL',
    30
);
INSERT INTO branch (
    branch_name,
    branch_city,
    assets
) Values ( 
    'DELHI',
    'NEW DELHI',
    1200000
);

INSERT INTO branch (
    branch_name,
    branch_city,
    assets
) Values ( 
    'TRIVANDRUM',
    'KERALA',
    2300000
);

INSERT INTO customer (
    customer_name,
    customer_street,
    customer_city
) VALUES (
    'BABITHA',
    'RAM STREET',
    'KARNATAKA'
);

INSERT INTO customer (
    customer_name,
    customer_street,
    customer_city
) VALUES (
    'BEN',
    'KRISHNA ST',
    'BANGALORE'
);

INSERT INTO customer (
    customer_name,
    customer_street,
    customer_city
) VALUES (
    'MAX',
    'LB ST',
    'MUMBAI'
);

INSERT INTO customer (
    customer_name,
    customer_street,
    customer_city
) VALUES (
    'JOHN',
    'GASSE ST',
    'MUNCHEN'
);

INSERT INTO customer (
    customer_name,
    customer_street,
    customer_city
) VALUES (
    'MIKE',
    'GS NAGAR',
    'TRIVANDRUM'
);
INSERT INTO customer (
    customer_name,
    customer_street,
    customer_city
) VALUES (
    'ELIJAH',
    'GK NAGAR',
    'ANDHERI'
);
INSERT INTO customer (
    customer_name,
    customer_street,
    customer_city
) VALUES (
    'NICK',
    'GKS NAGAR',
    'CHERI'
);

INSERT INTO loan (
    loan_number,
    branch_name,
    loan_amount
) VALUES (
    21,
    'DELHI',
    30000
);

INSERT INTO loan (
    loan_number,
    branch_name,
    loan_amount
) VALUES (
    13,
    'KERALA',
    2000000
);

INSERT INTO loan (
    loan_number,
    branch_name,
    loan_amount
) VALUES (
    20,
    'TAMIL NADU',
    1000000
);

INSERT INTO loan (
    loan_number,
    branch_name,
    loan_amount
) VALUES (
    12,
    'KARNATAKA',
    500000
);

INSERT INTO borrower (
    customer_name,
    loan_number
) VALUES (
    'BEN',
    13
);

INSERT INTO borrower (
    customer_name,
    loan_number
) VALUES (
    'BABITHA',
    21
);

INSERT INTO borrower (
    customer_name,
    loan_number
) VALUES (
    'MAX',
    20
);

INSERT INTO borrower (
    customer_name,
    loan_number
) VALUES (
    'JOHN',
    12
);

INSERT INTO account (
    account_number,
    branch_name,
    balance
) VALUES (
    123432,
    'KERALA',
    10000
);

INSERT INTO account (
    account_number,
    branch_name,
    balance
) VALUES (
    123435,
    'TAMIL NADU',
    450
);

INSERT INTO account (
    account_number,
    branch_name,
    balance
) VALUES (
    123456,
    'KARNATAKA',
    1120000
);
INSERT INTO account (
    account_number,
    branch_name,
    balance
) VALUES (
    123457,
    'KOLKATA',
    1120000
);
INSERT INTO account (
    account_number,
    branch_name,
    balance
) VALUES (
    123458,
    'KOLKATA',
    11200
);

INSERT INTO depositer (
    customer_name,
    account_number
) VALUES (
    'BEN',
    123432
);

INSERT INTO depositer (
    customer_name,
    account_number
) VALUES (
    'MAX',
    123435
);

INSERT INTO depositer (
    customer_name,
    account_number
) VALUES (
    'JOHN',
    123456
);

INSERT INTO employee (
    employee_name,
    branch_name,
    dob,
    salary
) VALUES (
    'RUSH',
    'KERALA',
    TO_DATE('03/05/1976', 'dd/mm/yyyy'),
    50000
);

INSERT INTO employee (
    employee_name,
    branch_name,
    dob,
    salary
) VALUES (
    'RIO',
    'TAMIL NADU',
    TO_DATE('11-04-1995', 'dd/mm/yyyy'),
    5000
);

INSERT INTO employee (
    employee_name,
    branch_name,
    dob,
    salary
) VALUES (
    'SAM',
    'KARNATAKA',
    TO_DATE('28-03-1985', 'dd/mm/yyyy'),
    100000
);
INSERT INTO employee (
    employee_name,
    branch_name,
    dob,
    salary
) VALUES (
    'SAMANTHA',
    'MUMBAI',
    TO_DATE('27-02-1984', 'dd/mm/yyyy'),
    100000
);
INSERT INTO employee (
    employee_name,
    branch_name,
    dob,
    salary
) VALUES (
    'SAMUEL',
    'KOLKATA',
    TO_DATE('29-05-1986', 'dd/mm/yyyy'),
    1000
);

clear screen