
package Modelo;

import java.util.Date;

public class Registro_Visitas {
    int id;
    String matricula;
    String nombre;
    Date fecha;

    public Registro_Visitas() {
    }

    public Registro_Visitas(String matricula, String nombre, Date fecha) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.fecha = fecha;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
    
    
    
}
