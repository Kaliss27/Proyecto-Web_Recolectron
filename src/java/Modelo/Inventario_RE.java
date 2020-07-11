
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Inventario_RE {
    int id;
    int fk_recepcion;
    int fk_re;
    int cantidad;
    float peso_x_unidad;
    int estado;
    String notas;

    public Inventario_RE() {
    }

    public Inventario_RE(int fk_recepcion, int fk_re, int cantidad, float peso_x_unidad, int estado, String notas) {
        this.fk_recepcion = fk_recepcion;
        this.fk_re = fk_re;
        this.cantidad = cantidad;
        this.peso_x_unidad = peso_x_unidad;
        this.estado = estado;
        this.notas = notas;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFk_recepcion() {
        return fk_recepcion;
    }

    public void setFk_recepcion(int fk_recepcion) {
        this.fk_recepcion = fk_recepcion;
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

    public float getPeso_x_unidad() {
        return peso_x_unidad;
    }

    public void setPeso_x_unidad(float peso_x_unidad) {
        this.peso_x_unidad = peso_x_unidad;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getNotas() {
        return notas;
    }

    public void setNotas(String notas) {
        this.notas = notas;
    }
    
    
    
    
}
