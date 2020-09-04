DELIMITER $$
CREATE DEFINER=`u24`@`%` PROCEDURE `MyProc_19`(IN inID INT)
BEGIN
	SELECT * FROM MyTBL_19 where ID=inID;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`u24`@`%` PROCEDURE `MyProc_19a`(IN inTitle varchar(20))
BEGIN
	INSERT INTO MyTBL_19a (Title) VALUES (inTitle);
	SELECT * FROM MyTBL_19a;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`u24`@`%` FUNCTION `MyFunc_19a`(solis INT) RETURNS int(11)
BEGIN
	DECLARE lielums, done INT;
    DECLARE mainig1 integer;
    DECLARE mainig2 varchar(10);
    
    DECLARE cursor_ieksh_tabulas CURSOR FOR SELECT ID, Title FROM MyTBL_19a;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    SET lielums = 0;
    SET done = FALSE;
    OPEN cursor_ieksh_tabulas;
    lasiishanas_cikls: LOOP
		FETCH cursor_ieksh_tabulas INTO mainig1, mainig2;
        IF done THEN
			LEAVE lasiishanas_cikls;
		END IF;
		SET lielums=lielums+mainig1;
	END LOOP;
    CLOSE cursor_ieksh_tabulas;
        
	RETURN lielums * solis;
END$$
DELIMITER ;