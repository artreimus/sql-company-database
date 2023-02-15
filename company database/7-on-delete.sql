-- On delete with foreign key emp_id = 102
DELETE FROM employee
WHERE emp_id = 102;

-- ON DELETE SET NULL
-- Sets mgr_id to null with emp_id = 102
SELECT * from branch;
-- Sets super_id to null with emp_id = 102
SELECT * from employee;

-- ON DELETE CASCADE
-- Deletes row with emp_id = 102 
SELECT * from works_with;

DELETE FROM branch
WHERE branch_id = 2;

-- ON DELETE CASCADE
-- Delete rows with branch_id = 2
SELECT * from branch_supplier;


