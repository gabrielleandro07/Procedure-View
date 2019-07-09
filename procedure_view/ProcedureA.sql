/* A */


Delimiter $$

Create procedure buscaQTDalunos (OUT quantidade int)
Begin
Select count(*)INTO quantidade from usuario;

End $$

DELIMITER ;

call buscaQtdalunos(@quantidade);