
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Vista_Actividades {
    int id;
    String descripcion;
    String fecha_hora_ini;
    String fecha_hora_fin;
    String estado;

    public Vista_Actividades() {
    }

    public Vista_Actividades(String descripcion, String fecha_hora_ini, String fecha_hora_fin, String estado) {
        this.descripcion = descripcion;
        this.fecha_hora_ini = fecha_hora_ini;
        this.fecha_hora_fin = fecha_hora_fin;
        this.estado = estado;
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

    public String getFecha_hora_ini() {
        return fecha_hora_ini;
    }

    public void setFecha_hora_ini(String fecha_hora_ini) {
        this.fecha_hora_ini = fecha_hora_ini;
    }

    public String getFecha_hora_fin() {
        return fecha_hora_fin;
    }

    public void setFecha_hora_fin(String fecha_hora_fin) {
        this.fecha_hora_fin = fecha_hora_fin;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
}
