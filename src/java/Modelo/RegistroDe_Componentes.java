
package Modelo;

/**
 *
 * @author Alvaro
 */
public class RegistroDe_Componentes {
    int id;
    int fk_registrode;
    int fk_componente;
    int cantidad;

    public RegistroDe_Componentes() {
    }

    public RegistroDe_Componentes(int fk_registrode, int fk_componente, int cantidad) {
        this.fk_registrode = fk_registrode;
        this.fk_componente = fk_componente;
        this.cantidad = cantidad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFk_registrode() {
        return fk_registrode;
    }

    public void setFk_registrode(int fk_registrode) {
        this.fk_registrode = fk_registrode;
    }

    public int getFk_componente() {
        return fk_componente;
    }

    public void setFk_componente(int fk_componente) {
        this.fk_componente = fk_componente;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
    
}
