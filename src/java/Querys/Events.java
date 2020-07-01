
package Querys;

import Config.Conexion;
import Modelo.Eventos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Alvaro
 */
public class Events {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
     public boolean add(Eventos ev) {
    boolean r = false;
        try {
            cn.getConnection().setAutoCommit(false);
            String consulta = "insert into eventos (Titulo_Evento,Descripción,Fecha_Hora)\n" +
                "values (?,?,?);";
            ps = cn.getConnection().prepareStatement(consulta);
            ps.setString(1, ev.getTitulo());
            ps.setString(2, ev.getDescripcion());
            ps.setString(3, ev.getFecha().concat(" "+ev.getHora()));

            if (ps.executeUpdate() == 1) {
                r = true;
                 cn.getConnection().commit();
            }else{
                System.out.println("no se guardo");
            }
        } catch (SQLException e) {
            System.out.println("Error" + e);
        } finally {
            try {
                if (cn.getConnection() != null) {
                    cn.getConnection().close();
                }
                if (ps != null) {
                    ps.close();
                }

            } catch (SQLException e) {
                System.err.println("Error " + e);
            }
        }
        return r;
    }
}
