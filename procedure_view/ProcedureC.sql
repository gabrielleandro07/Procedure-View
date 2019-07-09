/* C */

DELIMITER $$

CREATE PROCEDURE Multiplicar (Mult int)

BEGIN
    select Mult * 10 as 'Multiplicação por 10';
END $$

DELIMITER ;

call Multiplicar(3);