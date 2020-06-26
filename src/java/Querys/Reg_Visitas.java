
package Querys;

import Config.Conexion;
import Modelo.Catalogo_PE_Deps;
import Modelo.Catalogo_Visitas;
import Modelo.Registro_Visitas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class Reg_Visitas {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Registro_Visitas regv;
    
    public boolean add(Registro_Visitas rv) {
    boolean r = false;
        try {
            cn.getConnection().setAutoCommit(false);
            String consulta = "insert into registro_visitas (Matricula, Nombre, APaterno, AMaterno,PE_Dependencia, Tipo_Visita, Fecha_Hora)\n" +
                "values (?,?,?,?,?,?,?);";
            ps = cn.getConnection().prepareStatement(consulta);
            ps.setString(1, rv.getMatricula());
            ps.setString(2, rv.getNombre());
            ps.setString(3, rv.getApaterno());
            ps.setString(4, rv.getAmaterno());
            ps.setInt(5, rv.getPe_dependencia());
            ps.setInt(6, rv.getTipo_visita());
            ps.setString(7, rv.getFecha());

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
    
    public ArrayList<Catalogo_PE_Deps> getPE() {
        ArrayList<Catalogo_PE_Deps> dependencias = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM catalogo_pe_deps;";
            ps = cn.getConnection().prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Catalogo_PE_Deps deps = new Catalogo_PE_Deps();
                deps.setId(rs.getInt("ID_PE_Deps"));
                deps.setDependencia(rs.getString("PE_Dependencia"));
                dependencias.add(deps);
               
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
        return dependencias;
    }
     
     public ArrayList<Catalogo_Visitas> getVisitas() {
        ArrayList<Catalogo_Visitas> visits = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM catalogo_visitas;";
            ps = cn.getConnection().prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Catalogo_Visitas visita = new Catalogo_Visitas();
                visita.setId(rs.getInt("ID_Visita"));
                visita.setTipo(rs.getString("Tipo_Visita"));
                visits.add(visita);
             
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
        return visits;
    }
}
