
package Modelo;

/**
 *
 * @author Alvaro
 */
public class RegistroDe_PublicoGral {
    int id;
    int fk_articulo;
    int cantidad;
    int de_gral;

    public RegistroDe_PublicoGral() {
    }

    public RegistroDe_PublicoGral(int fk_articulo, int cantidad, int de_gral) {
        this.fk_articulo = fk_articulo;
        this.cantidad = cantidad;
        this.de_gral = de_gral;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFk_articulo() {
        return fk_articulo;
    }

    public void setFk_articulo(int fk_articulo) {
        this.fk_articulo = fk_articulo;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getDe_gral() {
        return de_gral;
    }

    public void setDe_gral(int de_gral) {
        this.de_gral = de_gral;
    }
    
    
}
