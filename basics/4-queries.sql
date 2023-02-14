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

-- Queries
-- Select all and return all cols
SELECT * FROM student;

-- Select all and only return name col
SELECT name FROM student;

-- Select all and return name col, major
SELECT name, major FROM student;

-- Select all and return name col, major (Prepend method)
SELECT student.name, student.major FROM student;

-- Select all, return name col, major, and order name alphabetically (ascending)
SELECT student.name, student.major 
FROM student
ORDER BY name;

SELECT * 
FROM student
ORDER BY name ASC;

-- Select all, return all cols, and order name alphabetically (descending)
SELECT * 
FROM student
ORDER BY name DESC;

-- Select all, return all cols, and order primarily major and then student_id
SELECT * 
FROM student
ORDER BY major, student_id;

-- Select all, return all cols, and order primarily major and then student_id in DESC
SELECT * 
FROM student
ORDER BY major, student_id DESC;

-- Select students where major is biology and return all cols
SELECT * 
FROM student
WHERE major = 'Biology';

-- Select students where major is chemistry or biology and return name, major cols
SELECT name, major
FROM student
WHERE major = 'Biology' OR major = 'Chemistry';

-- Select students where major is not biology and return name, major cols
SELECT name, major
FROM student
WHERE major <> 'Biology';

-- Select students where student_id is less than 3, and return name, major cols
SELECT name, major
FROM student
WHERE student_id < 3;

-- Select students where name is Claire, Kate OR, Mike, and return name, major cols
SELECT name, major
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');

-- Select students where name is Claire, Kate OR, Mike AND student_id is greater than 2, and return name, major cols
SELECT name, major
FROM student
WHERE major IN ('Biology', 'Chemistry') AND student_id > 2;

