-- Test data
INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);
SELECT * from branch;

-- Find all branches and the names of their managers
-- Inner Join 
-- Combines the employee and branch id only if ON condition is true
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch 
ON employee.emp_id = branch.mgr_id;

-- Left Join
-- All rows from left table is included. employee in this case
-- Returns null for non existent col query
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch 
ON employee.emp_id = branch.mgr_id;

-- Right Join 
-- All rows from right table is included. branch in this case
-- Returns null for non existent col query
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch 
ON employee.emp_id = branch.mgr_id;

-- Full outer Join
-- Grabs all data from left and right table no matter they meet the ON condition or not
-- Not possible in MySQL