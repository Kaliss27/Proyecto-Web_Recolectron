
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Residuos_Electronicos {
    int id;
    String descripcion;
    int categoria;
    float costoxunidad;

    public Residuos_Electronicos() {
    }

    public Residuos_Electronicos(String descripcion, int categoria, float costoxunidad) {
        this.descripcion = descripcion;
        this.categoria = categoria;
        this.costoxunidad = costoxunidad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public float getCostoxunidad() {
        return costoxunidad;
    }

    public void setCostoxunidad(float costoxunidad) {
        this.costoxunidad = costoxunidad;
    }
    
    
    
    
}
