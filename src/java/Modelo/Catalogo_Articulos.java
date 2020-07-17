
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Catalogo_Articulos {
    int id;
    String articulo;
    int cantidad;

    public Catalogo_Articulos() {
    }

    public Catalogo_Articulos(String articulo, int cantidad) {
        this.articulo = articulo;
        this.cantidad = cantidad;
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

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
    
    
}
