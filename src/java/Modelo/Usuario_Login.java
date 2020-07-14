
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Usuario_Login {
    String nombre;
    String usuario;
    String password;
    int tipo_usuario;

    public Usuario_Login() {
    }

    public Usuario_Login(String nombre, String usuario, String password, int tipo_usuario) {
        this.nombre = nombre;
        this.usuario = usuario;
        this.password = password;
        this.tipo_usuario = tipo_usuario;
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

    public int getTipo_usuario() {
        return tipo_usuario;
    }

    public void setTipo_usuario(int tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
