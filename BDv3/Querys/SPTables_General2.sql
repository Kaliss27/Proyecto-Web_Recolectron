/*Si una tabla se quiere volver a llenar con los mismos datos, respetando su ID inicial, se corre este procedimiento
para que no haya problemas con los ID's auto incrementables*/
USE recobd_v3;
delimiter //
CREATE PROCEDURE deleteRowsCatalogosGral()
BEGIN
/*Elimina registros de la tabla catalogo_origen y resetea el contador del campo ID a 1*/
DELETE FROM catalogo_origen;
ALTER TABLE catalogo_origen
AUTO_INCREMENT=1;
/*Elimina registros de la tabla estados y resetea el contador del campo ID a 1*/
DELETE FROM estados;
ALTER TABLE estados
AUTO_INCREMENT=1;
/*Elimina registros de la tabla permisos_usuario y resetea el contador del campo ID a 1*/
DELETE FROM permisos_usuario;
ALTER TABLE permisos_usuario
AUTO_INCREMENT=1;

END