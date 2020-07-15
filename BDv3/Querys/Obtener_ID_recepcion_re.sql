USE recobd_v3;
delimiter $
CREATE PROCEDURE donaciones_recibidas_inventarioSB(IN estado INT)
BEGIN
    set @idarticulo = (select last_insert_id() from recepcion_re limit 1);
	insert into inventario_sb(Articulo_FK,Estado_FK) values (@idarticulo,estado);
END$