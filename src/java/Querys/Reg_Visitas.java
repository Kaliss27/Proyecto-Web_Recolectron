
package Querys;

import Config.Conexion;
import Modelo.Registro_Visitas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;


public class Reg_Visitas {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Registro_Visitas regv;
    
    public boolean add(Registro_Visitas rv) throws SQLException{
        String sql = "insert into registro_visitas(matricula,nombre,RPE_dependencia,tipo_visita,fecha_hora) values (?,?,?,?,"+"\""+ new Date(rv.getFecha().getTime())+ "\");";
        
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, rv.getMatricula());
            ps.setString(2, rv.getNombre());
            ps.setInt(3, 1);
            ps.setInt(4, 3);
            System.out.println("Pruebaaa"+rv);
            ps.executeUpdate();
            
        }catch (SQLException e){
            
        }
        return false;
    }
}
