
package Querys;

import Config.Conexion;
import Modelo.Catalogo_Origen;
import Modelo.Categorias_RE;
import Modelo.Recepcion_RE;
import Modelo.Registro_Recepcion_Donaciones;
import Modelo.Residuos_Electronicos;
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
    
    
 public boolean add(Registro_Recepcion_Donaciones rrd) {
    boolean r = false;
        try {
            cn.getConnection().setAutoCommit(false);
            String consulta = "insert into registro_recepcion_donaciones (Origen, Nombre, Telefono,Correo_Electronico, Fecha_Hora)\n" +
                "values (?,?,?,?,?);";
            ps = cn.getConnection().prepareStatement(consulta);
            ps.setInt(1, rrd.getOrigen());
            ps.setString(2, rrd.getNombre());
            ps.setString(3, rrd.getTelefono());
            ps.setString(4, rrd.getCorreo());
            ps.setString(5, rrd.getFecha());

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
 
 public boolean registrar(Recepcion_RE rre) {
    boolean r = false;
        try {
            cn.getConnection().setAutoCommit(false);
            String consulta = "call donaciones_recibidas(?,?,?,?);";
            ps = cn.getConnection().prepareStatement(consulta);
            ps.setInt(1, rre.getFk_re());
            ps.setInt(2, rre.getCantidad());
            ps.setFloat(3, rre.getPesoxunidad());
            ps.setInt(4, 1);

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
    
        public ArrayList<Categorias_RE> getCategoriaRE(){
        ArrayList<Categorias_RE> categorias = new ArrayList<>();
        try{
            String consulta = "SELECT * FROM categorias_re;";
            ps = cn.getConnection().prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()){
                Categorias_RE categoria = new Categorias_RE();
                categoria.setId(rs.getInt("ID_cRE"));
                categoria.setCategoria(rs.getString("Categoria"));
                categorias.add(categoria);
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
        return categorias;
    }
        
            public ArrayList<Residuos_Electronicos> getRE(){
        ArrayList<Residuos_Electronicos> residuos = new ArrayList<>();
        try{
            String consulta = "SELECT * FROM residuos_electronicos;";
            ps = cn.getConnection().prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()){
                Residuos_Electronicos re = new Residuos_Electronicos();
                re.setId(rs.getInt("ID_RE"));
                re.setDescripcion(rs.getString("Descripcion"));
                re.setCategoria(rs.getInt("Categoria"));
                re.setCostoxunidad(rs.getFloat("Costo_Promedio_x_Unidad"));
                residuos.add(re);
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
        return residuos;
    }
            
     
}
