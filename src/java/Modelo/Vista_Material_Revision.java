
package Modelo;

/**
 *
 * @author Alvaro
 */
public class Vista_Material_Revision {
    int id;
    String material;
    int catidad;
    float pesoxunidad;

    public Vista_Material_Revision() {
    }

    public Vista_Material_Revision(String material, int catidad, float pesoxunidad) {
        this.material = material;
        this.catidad = catidad;
        this.pesoxunidad = pesoxunidad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public int getCatidad() {
        return catidad;
    }

    public void setCatidad(int catidad) {
        this.catidad = catidad;
    }

    public float getPesoxunidad() {
        return pesoxunidad;
    }

    public void setPesoxunidad(float pesoxunidad) {
        this.pesoxunidad = pesoxunidad;
    }
    
    
}
