package Config;

import java.sql.*;

public class Conexion {
    Connection con;

    public Conexion() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_recouv?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","19021998");
        }catch (Exception e){
            System.err.println("Error"+e);
        }
    }
    
    public Connection getConnection(){
        return con;
    }
    
}
