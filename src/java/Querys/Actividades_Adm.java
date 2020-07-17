
package Querys;

import Config.Conexion;
import Modelo.Registro_Visitas;
import Modelo.Vista_Actividades;
import Modelo.Vista_Material;
import Modelo.Vista_Material_Revision;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Alvaro
 */
public class Actividades_Adm {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Registro_Visitas regv;
    
    
    public ArrayList<Vista_Actividades> getActividades() {
        ArrayList<Vista_Actividades> actividades = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM recobd_v3.actividades;";
            ps = cn.getConnection().prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Vista_Actividades actividad = new Vista_Actividades();
                actividad.setId(rs.getInt("ID_Actividad"));
                actividad.setDescripcion(rs.getString("Descripción"));
                actividad.setFecha_hora_ini(rs.getString("Fecha_Hora_Inicio"));
                actividad.setFecha_hora_fin(rs.getString("Fecha_Hora_Fin"));
                actividad.setEstado(rs.getString("Estado"));
               actividades.add(actividad);
               
            }
        } catch (SQLException e) {
            System.err.println("Error" + e);
        } finally {
            try {
                if (cn.getConnection() != null) {
                    cn.getConnection().close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println("Error " + e);
            }
        }
        return actividades;
    }
    
    public ArrayList<Vista_Material> getMaterial() {
        ArrayList<Vista_Material> materiales = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM recobd_v3.material_en_espera;";
            ps = cn.getConnection().prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Vista_Material material = new Vista_Material();
                material.setId(rs.getInt("ID_InventarioSB"));
                material.setMaterial(rs.getString("Material"));
                materiales.add(material);
            }
        } catch (SQLException e) {
            System.err.println("Error" + e);
        } finally {
            try {
                if (cn.getConnection() != null) {
                    cn.getConnection().close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println("Error " + e);
            }
        }
        return materiales;
    }
    
    public ArrayList<Vista_Material_Revision> getMaterial_Revision() {
        ArrayList<Vista_Material_Revision> materiales_rev = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM recobd_v3.material_en_espera_revision";
            ps = cn.getConnection().prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Vista_Material_Revision material = new Vista_Material_Revision();
                material.setId(rs.getInt("ID_InventarioSB"));
                material.setMaterial(rs.getString("Material"));
                material.setCatidad(rs.getInt("Cantidad"));
                material.setPesoxunidad(rs.getFloat("Peso_x_Unidad"));
                materiales_rev.add(material);
            }
        } catch (SQLException e) {
            System.err.println("Error" + e);
        } finally {
            try {
                if (cn.getConnection() != null) {
                    cn.getConnection().close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println("Error " + e);
            }
        }
        return materiales_rev;
    }
}


