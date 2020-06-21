USE recobd_v3;
delimiter //
CREATE PROCEDURE fillTables_ControlGeneral()
BEGIN
/*Llenar Tabla catalogo_origen*/
INSERT INTO catalogo_origen(Origen_Tipo) VALUES
("Empresa"),
("Persona");

/*Llenar Tabla estados*/
INSERT INTO estados(Estado) VALUES 
("Ninguno"),
("Por revisar"),
("Funcional"),
("Inservible");

/*Llenar Tabla permisos_usuario*/
INSERT INTO permisos_usuario(Tipo_Usuario) VALUES
("Administrador"),
("Contribuyente"),
("Analista");
END