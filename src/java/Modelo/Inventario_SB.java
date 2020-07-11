
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Inventario_SB {
    int id;
    int aticulo_fk;
    int estado;
    String notas;

    public Inventario_SB() {
    }

    public Inventario_SB(int aticulo_fk, int estado, String notas) {
        this.aticulo_fk = aticulo_fk;
        this.estado = estado;
        this.notas = notas;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAticulo_fk() {
        return aticulo_fk;
    }

    public void setAticulo_fk(int aticulo_fk) {
        this.aticulo_fk = aticulo_fk;
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
