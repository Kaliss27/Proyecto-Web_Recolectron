USE recobd_v3;
delimiter $
CREATE PROCEDURE donaciones_recibidas(IN idresiduo INT,IN cant INT,IN pxu FLOAT)
BEGIN
	set @idrecep = (select max(ID_Recepcion) from registro_recepcion_donaciones);
	insert into recepcion_re(FK_Recepcion,FK_RE,Cantidad,Peso_x_Unidad) values (@idrecep,idresiduo,cant,pxu);

END$
