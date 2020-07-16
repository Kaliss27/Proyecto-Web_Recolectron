
package Controlador;

import Modelo.Estados;
import Modelo.Vista_Inventario;
import Querys.Inventario_Adm;
import java.util.ArrayList;

/**
 *
 * @author Alvaro
 */
public class Inventario_Principal {
    
    public ArrayList<Vista_Inventario>obtenerArticulos(){
        Inventario_Adm inventario = new Inventario_Adm();
        return inventario.getInventario();
    }
    
    public ArrayList<Estados>obtenerEstados(){
        Inventario_Adm estados = new Inventario_Adm();
        return estados.getEstados();
    }
    
    
}
