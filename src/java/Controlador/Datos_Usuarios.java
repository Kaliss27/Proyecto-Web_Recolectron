
package Controlador;

import Modelo.Permisos_Usuario;
import Querys.Users;
import java.util.ArrayList;

/**
 *
 * @author Alvaro
 */
public class Datos_Usuarios {
    
    public ArrayList<Permisos_Usuario>obtenerPermiso_Usuario(){
        Users tipo_user = new Users();
        return tipo_user.getPermisoUser();
    }
}
