
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Registro_Emision_Donaciones_Estudiantes {
    int id;
    String matricula;
    String nombre;
    String apaterno;
    String amaterno;
    int fk_dependencia;
    String fecha;

    public Registro_Emision_Donaciones_Estudiantes() {
    }

    public Registro_Emision_Donaciones_Estudiantes(String matricula, String nombre, String apaterno, String amaterno, int fk_dependencia, String fecha) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apaterno = apaterno;
        this.amaterno = amaterno;
        this.fk_dependencia = fk_dependencia;
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

    public String getApaterno() {
        return apaterno;
    }

    public void setApaterno(String apaterno) {
        this.apaterno = apaterno;
    }

    public String getAmaterno() {
        return amaterno;
    }

    public void setAmaterno(String amaterno) {
        this.amaterno = amaterno;
    }

    public int getFk_dependencia() {
        return fk_dependencia;
    }

    public void setFk_dependencia(int fk_dependencia) {
        this.fk_dependencia = fk_dependencia;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
    
    
    
}
