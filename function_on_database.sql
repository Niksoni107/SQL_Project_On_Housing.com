DELIMITER $$
CREATE FUNCTION isnotnull(
value varchar(25)
)
RETURNS VARCHAR(25)
DETERMINISTIC
BEGIN
IF value > 0 THEN
RETURN ("yes");
ELSE
RETURN ("No");
END IF;
END$$
DELIMITER ;

SELECT isnotnull(1);

SELECT isnotnull(0);


DELIMITER $$
CREATE FUNCTION check_above_onelac(
value INTEGER
)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
IF value > 100000 THEN
RETURN ("above_onelac");
ELSE
RETURN ("below_onelac");
END IF;
END$$
DELIMITER ;

SELECT check_above_onelac(110000);
SELECT check_above_onelac(90000);


