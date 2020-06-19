
package Querys;

import Config.Conexion;
import Modelo.Catalogo_Origen;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Alvaro
 */
public class Donaciones_Rec {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public ArrayList<Catalogo_Origen> getOrigen(){
        ArrayList<Catalogo_Origen> origen = new ArrayList<>();
        try{
            String consulta = "SELECT * FROM catalogo_origen;";
            ps = cn.getConnection().prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()){
                Catalogo_Origen origin = new Catalogo_Origen();
                origin.setId(rs.getInt("id_Origen"));
                origin.setOrigen(rs.getString("Origen_Tipo"));
                origen.add(origin);
            }
            
        }catch(SQLException e){
            System.err.println("Error" + e);
        }finally{
            try{
                if(cn.getConnection() != null){
                    cn.getConnection().close();
                }
                if(ps != null){
                    ps.close();
                }
                if(rs != null){
                    rs.close();
                }
            }catch (SQLException e){
                System.err.println("Error " + e);
            }
        }
        return origen;
    }
    
}
