-- Similar to REGEX
-- % = any no. of characters before/after pattern
-- _ = one character before/after pattern
-- Not case sensitive

-- Find any client's who are an LLC
SELECT * 
from client
WHERE client_name LIKE '%LLC';

-- Find any suppliers who has "label" in supplier name
SELECT * 
from branch_supplier
WHERE supplier_name LIKE '%label%';

-- Find any employee born in October
SELECT *
from employee
WHERE birthday LIKE '____-10%';

-- Find any clients who are schools
SELECT *
from client
WHERE client_name LIKE '%school%';