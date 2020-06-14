
package Modelo;



public class Registro_Visitas {
    int id;
    String matricula;
    String nombre;
    String apaterno;
    String amaterno;
    int pe_dependencia;
    int tipo_visita;
    String fecha;

    public Registro_Visitas() {
    }

    public Registro_Visitas(String matricula, String nombre, String apaterno, String amaterno, int pe_dependencia, int tipo_visita, String fecha) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apaterno = apaterno;
        this.amaterno = amaterno;
        this.pe_dependencia = pe_dependencia;
        this.tipo_visita = tipo_visita;
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

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getPe_dependencia() {
        return pe_dependencia;
    }

    public void setPe_dependencia(int pe_dependencia) {
        this.pe_dependencia = pe_dependencia;
    }

    public int getTipo_visita() {
        return tipo_visita;
    }

    public void setTipo_visita(int tipo_visita) {
        this.tipo_visita = tipo_visita;
    }
    
    
    
    
}
