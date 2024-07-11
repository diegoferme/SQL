USE HR;
DELIMITER $$
CREATE PROCEDURE UPDATE_SAL (IN empNum CHAR(6), IN rating SMALLINT)
BEGIN
    IF rating = 1 THEN
        UPDATE employees
        SET salary = salary * 1.10
        WHERE emp_id = empNum;
    ELSE
        UPDATE employees
        SET salary = salary * 1.05
        WHERE emp_id = empNum;
    END IF;
END$$

DELIMITER ;