use recobd_v3;
CREATE VIEW
material_en_espera AS
SELECT  inventario_sb.ID_inventarioSB ,Descripcion as Material
FROM ((residuos_electronicos
INNER JOIN recepcion_re ON residuos_electronicos.ID_RE = recepcion_re.FK_RE)
INNER JOIN inventario_sb ON recepcion_re.ID_RcRE = inventario_sb.Articulo_FK);
