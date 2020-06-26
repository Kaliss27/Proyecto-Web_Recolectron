
package Controlador;
import Modelo.Catalogo_Origen;
import Modelo.Categorias_RE;
import Modelo.Recepcion_RE;
import Modelo.Registro_Recepcion_Donaciones;
import Modelo.Residuos_Electronicos;
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
    
    public ArrayList<Categorias_RE> obtenerCategoria(){
        Donaciones_Rec dr = new Donaciones_Rec();
        return dr.getCategoriaRE();
    }
    
    public ArrayList<Residuos_Electronicos> obtenerRE(){
        Donaciones_Rec dr = new Donaciones_Rec();
        return dr.getRE();
    }
    
     public void insertar(Registro_Recepcion_Donaciones rrd){
        Donaciones_Rec dr = new Donaciones_Rec();
        dr.add(rrd);
    }
     
     public void registar_recepcion(Recepcion_RE rre){
        Donaciones_Rec dr = new Donaciones_Rec();
        dr.registrar(rre);
    }
}
