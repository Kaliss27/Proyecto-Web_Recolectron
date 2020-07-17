
package Controlador;

import Modelo.Permisos_Usuario;
import Querys.Vista_Rapida;
import java.util.ArrayList;

/**
 *
 * @author Alvaro
 */
public class Vista_Rapida_Admin {
    public ArrayList<Permisos_Usuario>obtenerPermiso_Usuario(){
        Vista_Rapida tipo_user = new Vista_Rapida();
        return tipo_user.getPermisoUser();
    }
}
