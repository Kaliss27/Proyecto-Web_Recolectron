
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Registro_Emision_Donaciones_PG {
    int id;
    String destinatario;
    String telefono;
    String correo;
    String fecha;
    String causa;

    public Registro_Emision_Donaciones_PG() {
    }
    

    public Registro_Emision_Donaciones_PG(String destinatario, String telefono, String correo, String fecha, String causa) {
        this.destinatario = destinatario;
        this.telefono = telefono;
        this.correo = correo;
        this.fecha = fecha;
        this.causa = causa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDestinatario() {
        return destinatario;
    }

    public void setDestinatario(String destinatario) {
        this.destinatario = destinatario;
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

    public String getCausa() {
        return causa;
    }

    public void setCausa(String causa) {
        this.causa = causa;
    }
    
    
    
}
