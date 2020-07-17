
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Registro_Actividades {
    int id;
    String descripcion;
    String fecha_hora_ini;
    String fecha_hora_fin;
    int fka_estado;

    public Registro_Actividades() {
    }

    public Registro_Actividades(String descripcion, String fecha_hora_ini, String fecha_hora_fin, int fka_estado) {
        this.descripcion = descripcion;
        this.fecha_hora_ini = fecha_hora_ini;
        this.fecha_hora_fin = fecha_hora_fin;
        this.fka_estado = fka_estado;
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

    public int getFka_estado() {
        return fka_estado;
    }

    public void setFka_estado(int fka_estado) {
        this.fka_estado = fka_estado;
    }
    
    
    
}
