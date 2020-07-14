
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Permisos_Usuario {
    int id;
    String tipo;

    public Permisos_Usuario() {
    }

    public Permisos_Usuario(String tipo) {
        this.tipo = tipo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    
}
