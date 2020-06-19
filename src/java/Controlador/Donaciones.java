
package Controlador;
import Modelo.Catalogo_Origen;
import Querys.Donaciones_Rec;
import java.util.ArrayList;

/**
 *
 * @author Alvaro
 */
public class Donaciones {
    
    public ArrayList<Catalogo_Origen> obtenerOrigen(){
        Donaciones_Rec dr = new Donaciones_Rec();
        return dr.getOrigen();
    }
}
