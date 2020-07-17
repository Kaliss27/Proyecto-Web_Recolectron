use recobd_v3;
CREATE VIEW
Articulos AS
SELECT inventario_re.ID_Articulo as idArticulo, residuos_electronicos.Descripcion as Articulo, inventario_re.Cantidad 
FROM residuos_electronicos
JOIN inventario_re ON residuos_electronicos.ID_RE = inventario_re.Articulo
WHERE inventario_re.Cantidad > 0