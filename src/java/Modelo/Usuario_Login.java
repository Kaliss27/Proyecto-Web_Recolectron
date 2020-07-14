
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Usuario_Login {
    String usuario;
    String password;

    public Usuario_Login() {
    }

    public Usuario_Login(String usuario, String password) {
        this.usuario = usuario;
        this.password = password;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
