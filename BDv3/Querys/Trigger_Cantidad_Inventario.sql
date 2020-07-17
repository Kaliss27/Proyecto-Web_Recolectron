DROP TRIGGER IF EXISTS cantidad_inventario;
delimiter $
CREATE TRIGGER cantidad_inventario
BEFORE UPDATE ON inventario_re
FOR EACH ROW
BEGIN
	IF new.Cantidad <= 0 THEN
		SET new.Cantidad = 0;
	END IF;
END$