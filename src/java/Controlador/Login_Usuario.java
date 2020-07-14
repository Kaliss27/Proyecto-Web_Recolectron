
package Controlador;

import Modelo.Usuario_Login;
import Querys.Users;

/**
 *
 * @author Alvaro
 */
public class Login_Usuario {
    
    public int valida_usuario(Usuario_Login ul){
        Users usu = new Users();
        return usu.validar(ul);
        
    }
    
}
