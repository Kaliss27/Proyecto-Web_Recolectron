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
("Celulares",5,1000),
("Laptops",3,64000);
END
