USE recobd_v3;
delimiter //
CREATE PROCEDURE fillTables_RegistroVisitas()
BEGIN
/*Llenar Tabla Catalogo Visitas*/
INSERT INTO catalogo_visitas(Tipo_Visita) VALUES 
("Arquitectura Computacional"),
("Servicio Comunitario"),
("Servicio Social"),
("Visita"),
("Voluntariado");

/*Llenar Tabla PE_Dependencias*/
INSERT INTO catalogo_pe_deps(PE_Dependencia) VALUES
("Ingeniería Informática"),
("Ingeniería Mecatrónica"),
("Ingeniería en Electrónica y Comunicaciones"),
("Ingeniería Mecanica"),
("Ingeniería Química"),
("Ingeniería Civil"),
("Ingeniería Industrial"),
("Lic. Arquitectura"),
("Ingeniería Metalúrgica y Ciencias de los Materiales"),
("Ingeniería Naval"),
("Ingeniería Eléctrica"),
("MICRONA"),
("Posgrado"),
("Personal");
END