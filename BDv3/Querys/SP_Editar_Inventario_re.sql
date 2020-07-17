use recobd_v3;
delimiter $
CREATE PROCEDURE editar_inventario (IN id INT,IN residuo INT, IN cantidad INT, IN peso FLOAT, IN estado INT, IN notas VARCHAR(50))
BEGIN
	UPDATE inventario_re
	SET Articulo = residuo, Cantidad = cantidad, Peso_x_Unidad = peso, FKI_Estado = estado, Notas = notas
    WHERE ID_Articulo = id;
END$

