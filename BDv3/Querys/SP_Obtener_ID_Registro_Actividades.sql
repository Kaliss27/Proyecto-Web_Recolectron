USE recobd_v3;
delimiter $
CREATE PROCEDURE actividades_material(IN descripcion VARCHAR(50),IN fecha_ini DATETIME,IN fecha_fin DATETIME,IN estado INT,IN material INT)
BEGIN
	
	insert into registro_actividades(Descripcion,Fecha_Hora_Inicio,Fecha_Hora_Fin,FKA_Estado) values (descripcion,fecha_ini,fecha_fin,estado);
    set @idactividad = (select max(ID_Actividad) from registro_actividades);
	insert into sb_actividades(FK_SB,FK_Act) values (material,@idactividad);

END$