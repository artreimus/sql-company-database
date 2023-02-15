CREATE TABLE trigger_test(
    message VARCHAR(100)
);

-- INSERT into trigger_test table then before INSERT to employee table
DELIMITER $$
CREATE 
    TRIGGER my_trigger BEFORE INSERT
    ON employee 
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('Added new employee');
    END$$
DELIMITER ;


INSERT INTO employee VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

-- NEW is the new row data being inserted
DELIMITER $$
CREATE 
    TRIGGER my_trigger_one BEFORE INSERT
    ON employee 
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER ;


INSERT INTO employee VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

-- Trigger with IF, ELSEIF, ELSE statements
DELIMITER $$
CREATE 
    TRIGGER my_trigger_two BEFORE INSERT
    ON employee 
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' then
            INSERT INTO trigger_test VALUES('Added male employee');
        ELSEIF NEW.sex = 'F' then
            INSERT INTO trigger_test VALUES('Added female employee');
        ELSE 
            INSERT INTO trigger_test VALUES('Added other employee');
        END IF;
    END$$
DELIMITER ;


INSERT INTO employee VALUES(113, 'Art', 'James', '1978-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;
