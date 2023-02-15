-- Find names of all employees who have sold over 30,000 to a single client
SELECT employee.first_name, employee.last_name 
FROM employee 
WHERE employee.emp_id IN (
    SELECT works_with.emp_id 
    FROM works_with 
    WHERE works_with.total_sales > 30000
);


-- Find all clients who are handled by the branch that 
-- Michael Scott manages
-- Assume you know Michael's ID

SELECT client.client_name 
FROM client 
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch 
    WHERE branch.mgr_id = 102
    -- limit to 1 because = can only handle one query
    LIMIT 1
);

-- Assume you don't know Michael's ID
SELECT client.client_name 
FROM client 
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch 
    WHERE branch.mgr_id IN (
        SELECT employee.emp_id 
        FROM employee 
        WHERE employee.first_name LIKE '%Michael%' and employee.last_name LIKE "%Scott"
    )
);


