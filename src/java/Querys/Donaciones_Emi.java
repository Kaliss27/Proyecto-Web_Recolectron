
package Querys;

import Config.Conexion;
import Modelo.Registro_Emision_Donaciones_Estudiantes;
import Modelo.Registro_Emision_Donaciones_PG;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Alvaro
 */
public class Donaciones_Emi {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public boolean add_estudiante(Registro_Emision_Donaciones_Estudiantes rede) {
    boolean r = false;
        try {
            cn.getConnection().setAutoCommit(false);
            String consulta = "insert into registro_emision_donaciones_estudiantes(Matricula, Nombre, APaterno,AMaterno, FK_Dependencia, Fecha_Hora)\n" +
                "values (?,?,?,?,?,?);";
            ps = cn.getConnection().prepareStatement(consulta);
            ps.setString(1, rede.getMatricula());
            ps.setString(2, rede.getNombre());
            ps.setString(3, rede.getApaterno());
            ps.setString(4, rede.getAmaterno());
            ps.setInt(5, rede.getFk_dependencia());
            ps.setString(6, rede.getFecha());

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
    
    public boolean add_publico(Registro_Emision_Donaciones_PG redpg) {
    boolean r = false;
        try {
            cn.getConnection().setAutoCommit(false);
            String consulta = "insert into registro_emision_donaciones_pg(Destinatario, Telefono, Correo_Electronico,Fecha_Hora, Causa)\n" +
                "values (?,?,?,?,?);";
            ps = cn.getConnection().prepareStatement(consulta);
            ps.setString(1, redpg.getDestinatario());
            ps.setString(2, redpg.getTelefono());
            ps.setString(3, redpg.getCorreo());
            ps.setString(4, redpg.getFecha());
            ps.setString(5, redpg.getCausa());

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
