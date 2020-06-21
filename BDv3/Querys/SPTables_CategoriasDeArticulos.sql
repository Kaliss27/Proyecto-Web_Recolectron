USE recobd_v3;
delimiter //
CREATE PROCEDURE fillTablesCategorias_de_Articulos()
BEGIN
/*Llenar tabla "Elementos Quimicos*/
INSERT INTO elementos_quimicos(Elemento,Daños) VALUES
("Arsénico","Una sustancia cancerígena."),
("Cadmio","Metal pesado que puede provocar cáncer, debilidad en los huesos, daño a hígado y riñones, daño al sistema inmunitario, diarrea y hasta desórdenes psicológicos."),
("Litio","El riñón, daña el sistema nervioso y genera problemas respiratorios."),
("Mercurio","Afecta el sistema nervioso, irrita los ojos y provoca erupciones en la piel."),
("Selenio","Puede ocasionar pelo quebradizo, hinchazón de la piel, dolores agudos y uñas deformadas."),
("Plomo","Daña los riñones, el cerebro y todo el sistema nervioso, disminuye las habilidades de aprendizaje.");
/*Llenar tabla "Categorias"*/
INSERT INTO categorias_re(Categoria) VALUES
("Electrodomésticos"),
("Audio y Video"),
("Iluminación"),
("Hardware"),
("Periféricos y Accesorios"),
("Componentes Electrónicos"),
("Redes/IT"),
("Otros");
/*Llenar tabla Residuos Electronicos*/
INSERT INTO residuos_electronicos(Descripcion,Categoria,Costo_Promedio_x_Unidad) VALUES
("Refrigerador",1,4500), 
("Congelador",1,9000), 
("Aire acondicionado",1,5000),
("Televisión",2,5000),
("Computadora portátil",4,4000),
("Lamparas LED",3,450),
("Lavadora",1,4000),
("Parillas eléctricas",1,3500),
("Grabadora de vídeo",2,1000),
("Radios",2,500),
("Celulares",5,2000),
("Laptops",4,64000),
("Proyector",2,5000),
("Consolas de Videojuegos",2,4000),
("Focos",3,50),
("Lamparas",3,200),
("Reflectores",3,500),
("Series de focos navideños",3,100),
("Tarjetas Madre",4,3000),
("Memoria Ram",4,800),
("Discos Duros",4,1000),
("Impresoras",5,1500),
("Teclados",5,200),
("Memorias USB",5,100),
("Tablets",5,1000),
("Capacitores",6,3),
("Resistores",6,3),
("Inductores",6,20),
("Motores Brushless",6,30),
("Diodos",6,8),
("Router",7,7000),
("Switch",7,4000),
("Telefonos IP",7,2500),
("Access Points",7,2000),
("Cables de Consola",7,20),
("Alambre",8,50),
("Plastico",8,20),
("Cassettes/CDs/Diskettes",8,10),
("Imanes",8,50),
("Engranes",8,30);
END
