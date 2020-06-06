/*Si una tabla se quiere volver a llenar con los mismos datos, respetando su ID inicial, se corre este procedimiento
para que no haya problemas con los ID's auto incrementables*/
USE recobd_v3;
delimiter //
CREATE PROCEDURE deleteRowsTablesCategorias_de_Articulos()
BEGIN
/*Elimina registros de la tabla elementos_quimicos y resetea el contador del campo ID a 1*/
DELETE FROM elementos_quimicos;
ALTER TABLE elementos_quimicos
AUTO_INCREMENT=1;
/*Elimina registros de la tabla categorias_re y resetea el contador del campo ID a 1*/
DELETE FROM categorias_re;
ALTER TABLE categorias_re
AUTO_INCREMENT=1;
/*Elimina registros de la tabla residuos_electronicos y resetea el contador del campo ID a 1*/
DELETE FROM residuos_electronicos;
ALTER TABLE residuos_electronicos
AUTO_INCREMENT=1;

END