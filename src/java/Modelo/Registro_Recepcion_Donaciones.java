
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Registro_Recepcion_Donaciones {
    int id;
    int origen;
    String nombre;
    String telefono;
    String correo;
    String fecha;

    public Registro_Recepcion_Donaciones() {
    }

    public Registro_Recepcion_Donaciones(int origen, String nombre, String telefono, String correo, String fecha) {
        this.origen = origen;
        this.nombre = nombre;
        this.telefono = telefono;
        this.correo = correo;
        this.fecha = fecha;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrigen() {
        return origen;
    }

    public void setOrigen(int origen) {
        this.origen = origen;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
    
    
}
