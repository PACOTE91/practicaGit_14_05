DELIMITER $$

CREATE TRIGGER disparador
	before UPDATE ON empleado
    FOR EACH ROW
    
BEGIN
	IF(New.fecha_ingreso < CURDATE() 
    ) THEN
    SET New.fecha_ingreso=CURDATE();
	END IF;
END $$
DELIMITER ;
	
