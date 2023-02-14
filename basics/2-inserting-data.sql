CREATE TABLE student(
    -- Alternative without constraints
    -- student_id INT,
    -- name VARCHAR(20),
    -- major VARCHAR(20),

    -- Alternative with constraints
    -- name VARCHAR(20) NOT NULL,
    -- major VARCHAR(20) UNIQUE,

    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

DESCRIBE student;
DROP TABLE student; 
ALTER TABLE student ADD gpa DECIMAL(3, 2);
ALTER TABLE student DROP COLUMN gpa;

-- Writing to table
-- We need to follow the order of the columns when inserting data
-- Alternative to way of inserting data to table
INSERT INTO student(student_id, name) values(1, 'Jack');
INSERT INTO student(name, major) values('Jacker', 'Biologys');
INSERT INTO student(name, major) values('Claire', 'Chemistry');

INSERT INTO student values(1, 'Jack', 'Biology');
INSERT INTO student values(2, 'Kate', 'Sociology');
INSERT INTO student values(3, NULL, 'Chemistry');
INSERT INTO student values(4, 'Jack', 'Biology');
INSERT INTO student values(5, 'Mike', 'Computer Science');

-- Query the table 
SELECT * FROM student;

