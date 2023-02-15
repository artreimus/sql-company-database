-- When using UNION you must follow the following rules:
-- Must have the same number of columns for every query
-- Must have Similar data types

-- Find a list of employee first names, branch names, and client names combined in one column
SELECT first_name AS names
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

-- Find a list of all clients and branch suppliers' names
SELECT client_name as names, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- Find a list of all money spent or earned by the company
SELECT salary
FROM employee 
UNION 
SELECT total_sales 
FROM works_with;