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
INSERT INTO residuos_electronicos(Descripcion,Categoria,Costo_Promedio_x_Unidad) VALUES
("Refrigerador",1,4500), 
("Congelador",1,9000), 
("Aire acondicionado",1,5000),
("Bomba de calor",1,10000),
("Televisión",2,5000),
("Computadora portátil",2,4000),
("Tableta",2,1500),
("Lamparas LED",3,450),
("Lavadora",4,4000),
("Placa eléctrica",4,3500),
("Lavavajilla",4,10000),
("Aspiradoras",5,1000),
("Horno de microondas",5,2000),
("Grabadora de vídeo",5,1000),
("Aparato de radio",5,500),
("Teléfono celular",6,1000),
("Dispositivo GPS",6,500),
("Computadora de escritorio",6,64000);
END
