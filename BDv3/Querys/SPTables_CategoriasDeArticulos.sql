USE recobd_v3;
delimiter //
CREATE PROCEDURE fillTablesCategorias_de_Articulos()
BEGIN
/*Llenar tabla "Elementos Quimicos*/
INSERT INTO elementos_quimicos(Elemento) VALUES
("Arsénico"),
("Cadmio"),
("Litio"),
("Mercurio"),
("Selenio"),
("Plomo"),
("Gas refrigerante"),
("Se saben tóxicos"),
("No identificado");
/*Llenar tabla "Categorias"*/
INSERT INTO categorias_re(Categoria) VALUES
("Componentes Electrónicos"),
("Equipos de intercambio de temperatura"),
("Grandes Equipos"),
("Lámparas"),
("Pantallas y monitores"),
("Pequeños Aparatos"),
("Pequeños artefactos de telec y TI");
/*Llenar tabla Residuos Electronicos*/
INSERT INTO residuos_electronicos(Descripcion,Categoria,Elemento,Costo_Promedio_x_Unidad) VALUES
("Refrigerador",1,7,4500), 
("Congelador",1,7,9000), 
("Aire acondicionado",1,7,5000),
("Bomba de calor",1,7,10000),
("Televisión",2,6,5000),
("Computadora portátil",2,2,4000),
("Tableta",2,2,1500),
("Lamparas LED",3,4,450),
("Lavadora",4,9,4000),
("Placa eléctrica",4,9,3500),
("Lavavajilla",4,9,10000),
("Aspiradoras",5,9,1000),
("Horno de microondas",5,8,2000),
("Grabadora de vídeo",5,9,1000),
("Aparato de radio",5,9,500),
("Teléfono celular",6,2,1000),
("Dispositivo GPS",6,9,500),
("Computadora de escritorio",6,6,64000);
END
