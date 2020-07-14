USE recobd_v3;
delimiter $
CREATE PROCEDURE donaciones_emitidas_Estudiante(IN idarticulo INT,IN cant INT)
BEGIN
	set @idestudiante = (select max(ID_Emision) from registro_emision_donaciones_estudiantes);
	insert into registrode_componentes(FK_RegistroDE,FK_Componente,Cantidad) values (@idestudiante,idarticulo,cant);

END$
