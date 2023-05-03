-- 1. Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

 SELECT @time := SEC_TO_TIME(123456);


-- 2. Выведите только четные числа от 1 до 10.
-- Пример: 2,4,6,8,10

USE lesson6

DELIMITER //
DROP PROCEDURE IF  EXISTS evan_numbers;
CREATE PROCEDURE evan_numbers (IN num INT)
BEGIN
	DECLARE i INT DEFAULT 0;
     DECLARE res VARCHAR(45) DEFAULT "";
		WHILE i <= num DO 
			IF i % 2 = 0 THEN
            SET res = CONCAT(res, " ", i);
            END IF;
            SET i = i + 1;
		END WHILE;
        SELECT res;
END //

DELIMITER ;

CALL evan_numbers (10);












/*
DELIMITER $$ 

CREATE PROCEDURE evans (IN num INT)
BEGIN
	DECLARE i INT DEFAULT 1;
    IF (i > 0) THEN 
		WHILE i <= num DO
			SELECT i = i % 2;
            SET i = i + 1;
		END WHILE;
	ELSE
		SELECT "Incorrect";
	END IF;
END $$

DELIMITER ;

CALL evans (10);
*/