USE db24;

DELIMITER $$
CREATE PROCEDURE MyProc_19 (IN inID INT)
BEGIN
	SELECT * FROM MyTBL_19 WHERE ID=inID;
END; $$
DELIMITER ;
-- call this with:
-- CALL `db24`.`MyProc_19`(1);