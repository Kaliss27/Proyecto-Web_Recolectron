package Config;

import java.sql.*;

public class Conexion {
    Connection con;

    public Conexion() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/recobd_v3?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=America/Mexico_City","root","19021998");
        }catch (ClassNotFoundException | SQLException e){
            System.err.println("Error"+e);
        }
    }
    
    public Connection getConnection(){
        return con;
    }
    
}
