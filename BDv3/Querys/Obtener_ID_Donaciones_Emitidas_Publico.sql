USE recobd_v3;
delimiter $
CREATE PROCEDURE donaciones_emitidas_PublicoGral(IN idarticulo INT,IN cant INT)
BEGIN
	set @idpublico = (select max(ID_DEPublico) from registro_emision_donaciones_pg);
	insert into registrode_publicogral(FK_Articulo,Cantidad,DE_Gral) values (idarticulo,cant,@idpublico);

END$
