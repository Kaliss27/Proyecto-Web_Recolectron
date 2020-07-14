
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Catalogo_Articulos {
    int id;
    String articulo;

    public Catalogo_Articulos() {
    }

    public Catalogo_Articulos(String articulo) {
        this.articulo = articulo;
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
    
    
}
