use recobd_v3;
CREATE VIEW
material_en_espera_revision AS
SELECT  inventario_sb.ID_inventarioSB ,Descripcion as Material, recepcion_re.Cantidad,recepcion_re.Peso_x_Unidad
FROM ((residuos_electronicos
INNER JOIN recepcion_re ON residuos_electronicos.ID_RE = recepcion_re.FK_RE)
INNER JOIN inventario_sb ON recepcion_re.ID_RcRE = inventario_sb.Articulo_FK)
WHERE inventario_sb.Estado_FK > 1