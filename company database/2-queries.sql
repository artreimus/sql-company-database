-- Find all queries
SELECT * FROM employee;
SELECT * FROM client;

-- Find all employee and order by salary
SELECT * FROM employee ORDER BY salary ASC;
SELECT * FROM employee ORDER BY salary DESC;

-- Find all employees and order by sex then names
SELECT * FROM employee ORDER BY sex, first_name, last_name;

-- Find first 5 employees in the table (based on primary id)
SELECT * FROM employee LIMIT 5;

-- Find the first and last names of all employees
SELECT first_name, last_name FROM employee;
-- and alter column names
SELECT first_name AS forename, last_name AS surname FROM employee;


-- Find out all the different genders (M, F)
SELECT DISTINCT sex
FROM employee;

-- Find out all the different branch_id (1,2,3)
SELECT DISTINCT branch_id
FROM employee;

-- Find the number of employees
SELECT COUNT(emp_id) FROM employee;

-- Find the number of employees with supervisors
SELECT COUNT(super_id) FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(emp_id) 
FROM employee
WHERE sex = 'F' AND birthday > '1971-01-01';

-- Find the average of all employee salaries
SELECT AVG(salary)
FROM employee;

-- Find the average of all male employee salaries
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';

-- Find the sum of all employee salaries
SELECT SUM(salary)
FROM employee;

-- AGGREGATION
-- Find out how many males and females there are
SELECT COUNT(sex), sex
FROM employee
GROUP by sex;

-- Find the total sales of each sales man
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

-- Find the total amount spent of each client
SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;

