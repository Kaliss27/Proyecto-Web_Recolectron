use recobd_v3;
CREATE VIEW
Articulos AS
SELECT residuos_electronicos.ID_RE as idArticulo, residuos_electronicos.Descripcion as Articulo
FROM residuos_electronicos
JOIN inventario_re ON residuos_electronicos.ID_RE = inventario_re.Articulo;