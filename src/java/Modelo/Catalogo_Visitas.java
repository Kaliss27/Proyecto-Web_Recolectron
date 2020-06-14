
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Catalogo_Visitas {
    int id;
    String tipo;

    public Catalogo_Visitas() {
    }

    public Catalogo_Visitas(String tipo) {
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
