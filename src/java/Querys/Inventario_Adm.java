
package Querys;

import Config.Conexion;
import Modelo.Estados;
import Modelo.Inventario_RE;
import Modelo.Registro_Visitas;
import Modelo.Residuos_Electronicos;
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
    
  public boolean editarInventario(Inventario_RE ire) {
    boolean r = false;
        try {
            cn.getConnection().setAutoCommit(false);
            String consulta = "call editar_inventario(?,?,?,?,?,?);";
            ps = cn.getConnection().prepareStatement(consulta);
            ps.setInt(1, ire.getId());
            ps.setInt(2, ire.getFk_re());
            ps.setInt(3, ire.getCantidad());
            ps.setFloat(4, ire.getPeso_x_unidad());
            ps.setInt(5, ire.getEstado());
            ps.setString(6, ire.getNotas());

            if (ps.executeUpdate() == 1) {
                r = true;
                 cn.getConnection().commit();
            }else{
                System.out.println("no se editó");
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
  
  public boolean eliminar_articulo(int id) {
    boolean r = false;
        try {
            cn.getConnection().setAutoCommit(false);
            String consulta = "DELETE FROM inventario_re WHERE ID_Articulo = ?;";
            ps = cn.getConnection().prepareStatement(consulta);
            ps.setInt(1,id);

            if (ps.executeUpdate() == 1) {
                r = true;
                 cn.getConnection().commit();
            }else{
                System.out.println("no se eliminó");
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
  
  public boolean add_residuo(Residuos_Electronicos re) {
    boolean r = false;
        try {
            cn.getConnection().setAutoCommit(false);
            String consulta = "insert into residuos_electronicos (Descripcion, Categoria, Costo_Promedio_x_Unidad)\n" +
                "values (?,?,?);";
            ps = cn.getConnection().prepareStatement(consulta);
            ps.setString(1, re.getDescripcion());
            ps.setInt(2, re.getCategoria());
            ps.setFloat(3, re.getCostoxunidad());

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
  
   public boolean add_articulo(Inventario_RE ire) {
    boolean r = false;
        try {
            cn.getConnection().setAutoCommit(false);
            String consulta = "insert into inventario_re (Articulo, Cantidad, Peso_x_Unidad, FKI_Estado, Notas)\n" +
                "values (?,?,?,?,?);";
            ps = cn.getConnection().prepareStatement(consulta);
            ps.setInt(1, ire.getFk_re());
            ps.setInt(2, ire.getCantidad());
            ps.setFloat(3, ire.getPeso_x_unidad());
            ps.setInt(4, ire.getEstado());
            ps.setString(5, ire.getNotas());
            
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
