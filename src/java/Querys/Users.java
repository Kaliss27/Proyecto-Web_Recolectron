
package Querys;

import Config.Conexion;
import Modelo.Permisos_Usuario;
import Modelo.Registro_Visitas;
import Modelo.Usuario_Login;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Alvaro
 */
public class Users {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Registro_Visitas regv;
    
    public ArrayList<Permisos_Usuario> getPermisoUser() {
        ArrayList<Permisos_Usuario> tipo_usuario = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM permisos_usuario;";
            ps = cn.getConnection().prepareStatement(consulta);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Permisos_Usuario permiso = new Permisos_Usuario();
                permiso.setId(rs.getInt("ID_Permisos"));
                permiso.setTipo(rs.getString("Tipo_Usuario"));
                tipo_usuario.add(permiso);
               
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
        return tipo_usuario;
    }
    
    public int validar(Usuario_Login user) {
        int r = 0;
        try {
            String consulta = "select * from usuarios where NombreUsuario = ? and Contrasenia = ?;";
            ps = cn.getConnection().prepareStatement(consulta);
            ps.setString(1, user.getUsuario());
            ps.setString(2, user.getPassword());
            rs=ps.executeQuery();

            while (rs.next()) {
                r = r + 1;
                user.setUsuario(rs.getString("NombreUsuario"));
                user.setPassword(rs.getString("Contrasenia"));

            }
            if (r == 1) {
                return 1;
            } else {
                return 0;
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
