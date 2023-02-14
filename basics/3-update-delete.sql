CREATE TABLE student(
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

DESCRIBE student;
DROP TABLE student; 
ALTER TABLE student ADD gpa DECIMAL(3, 2);
ALTER TABLE student DROP COLUMN gpa;

INSERT INTO student values(1, 'Jack', 'Biology');
INSERT INTO student values(2, 'Kate', 'Sociology');
INSERT INTO student values(3, "Claire", 'Chemistry');
INSERT INTO student values(4, 'Jack', 'Biology');
INSERT INTO student values(5, 'Mike', 'Computer Science');


-- Comparison Operators
-- = equals, <> not equals, > gt, < lt, >= gtoe, <= ltoe

-- Updating row
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET name = 'Claire'
WHERE major = "Chemistry";

UPDATE student
SET major = 'Comp Sci'
WHERE major = 'Computer Science';

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' or major = 'Chemistry';

UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;

-- Applies for all rows if WHERE is not envoked
UPDATE student
SET major = 'undecided';

-- Deleting row
DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE name = 'Tom' and major = 'undecided';

-- Delete all rows
DELETE FROM student;

SELECT * FROM student;

