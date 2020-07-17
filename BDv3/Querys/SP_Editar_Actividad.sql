use recobd_v3;
delimiter $
CREATE PROCEDURE editar_actividad (IN id INT,IN descrip VARCHAR(50), IN fechaini DATETIME,IN fechafin DATETIME,IN material INT)
BEGIN
	UPDATE registro_actividades JOIN sb_actividades
	SET registro_actividades.Descripcion = descrip, Fecha_Hora_Inicio = fechaini, Fecha_Hora_Fin = fechafin, sb_actividades.FK_SB = material
    WHERE ID_Actividad = id;
END$