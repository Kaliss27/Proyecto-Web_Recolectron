use recobd_v3;
CREATE VIEW
Actividades AS
SELECT ID_Actividad,Descripcion,Fecha_Hora_Inicio,Fecha_Hora_Fin, estados.Estado
FROM registro_actividades
JOIN estados ON registro_actividades.FKA_Estado = estados.ID_Estados