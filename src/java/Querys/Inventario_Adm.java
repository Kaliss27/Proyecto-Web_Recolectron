
package Querys;

import Config.Conexion;
import Modelo.Estados;
import Modelo.Registro_Visitas;
import Modelo.Vista_Inventario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Alvaro
 */
public class Inventario_Adm {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Registro_Visitas regv;
    
     public ArrayList<Vista_Inventario> getInventario() {
        ArrayList<Vista_Inventario> articulos = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM recobd_v3.inventario;";
            ps = cn.getConnection().prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Vista_Inventario inventario = new Vista_Inventario();
                inventario.setId(rs.getInt("ID_Articulo"));
                inventario.setArticulo(rs.getString("Articulo"));
                inventario.setCant(rs.getInt("Cantidad"));
                inventario.setEstado(rs.getString("Estado"));
                inventario.setNotas(rs.getString("Notas"));
                articulos.add(inventario);
               
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
        return articulos;
    }
     
    public ArrayList<Estados> getEstados() {
        ArrayList<Estados> estados = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM recobd_v3.estados;";
            ps = cn.getConnection().prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Estados estado = new Estados();
                estado.setId(rs.getInt("ID_Estados"));
                estado.setEstado(rs.getString("Estado"));
                estados.add(estado);
               
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
        return estados;
    }
     
}
