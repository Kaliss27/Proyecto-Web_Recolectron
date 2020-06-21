/*Si una tabla se quiere volver a llenar con los mismos datos, respetando su ID inicial, se corre este procedimiento
para que no haya problemas con los ID's auto incrementables*/
USE recobd_v3;
delimiter //
CREATE PROCEDURE deleteRowsTablesRegistro_Visitas()
BEGIN
/*Elimina registros de la tabla catalogo_visitas y resetea el contador del campo ID a 1*/
DELETE FROM catalogo_visitas;
ALTER TABLE catalogo_visitas
AUTO_INCREMENT=1;
/*Elimina registros de la tabla catalogo_pe_deps y resetea el contador del campo ID a 1*/
DELETE FROM catalogo_pe_deps;
ALTER TABLE catalogo_pe_deps
AUTO_INCREMENT=1;

END