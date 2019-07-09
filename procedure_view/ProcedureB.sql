/* B */

DELIMITER $$

CREATE PROCEDURE Quantidade (IN quantidade int)

BEGIN
    select * from noticia limit quantidade;
    
END $$

DELIMITER ;

call Quantidade(10);