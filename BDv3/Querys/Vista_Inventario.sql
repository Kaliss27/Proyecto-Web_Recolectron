use recobd_v3;
CREATE VIEW
Inventario AS
SELECT inventario_re.ID_Articulo,residuos_electronicos.Descripcion as Articulo,inventario_re.Cantidad,estados.Estado,inventario_re.Notas 
FROM inventario_re
JOIN residuos_electronicos ON inventario_re.Articulo = residuos_electronicos.ID_RE
JOIN Estados ON inventario_re.FKI_Estado = ID_Estados;