
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Vista_Inventario {
    int id;
    String articulo;
    int cant;
    String estado;
    String notas;

    public Vista_Inventario() {
    }

    public Vista_Inventario(String articulo, int cant, String estado, String notas) {
        this.articulo = articulo;
        this.cant = cant;
        this.estado = estado;
        this.notas = notas;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getArticulo() {
        return articulo;
    }

    public void setArticulo(String articulo) {
        this.articulo = articulo;
    }

    public int getCant() {
        return cant;
    }

    public void setCant(int cant) {
        this.cant = cant;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getNotas() {
        return notas;
    }

    public void setNotas(String notas) {
        this.notas = notas;
    }
    
    
    
    
}
