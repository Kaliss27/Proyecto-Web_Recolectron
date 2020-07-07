
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Recepcion_RE {
    int id;
    int fk_re;
    int cantidad;
    float pesoxunidad;

    public Recepcion_RE() {
    }

    public Recepcion_RE(int fk_re, int cantidad, float pesoxunidad) {
        this.fk_re = fk_re;
        this.cantidad = cantidad;
        this.pesoxunidad = pesoxunidad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFk_re() {
        return fk_re;
    }

    public void setFk_re(int fk_re) {
        this.fk_re = fk_re;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public float getPesoxunidad() {
        return pesoxunidad;
    }

    public void setPesoxunidad(float pesoxunidad) {
        this.pesoxunidad = pesoxunidad;
    }
    
  
    
}
