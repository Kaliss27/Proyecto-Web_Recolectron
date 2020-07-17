
package Controlador;

import Modelo.Estados;
import Modelo.Inventario_RE;
import Modelo.Residuos_Electronicos;
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
    
    public void editar_inv(Inventario_RE ire){
        Inventario_Adm edit = new Inventario_Adm();
        edit.editarInventario(ire);
    }
    
    public boolean eliminar(int id){
        Inventario_Adm inv = new Inventario_Adm();
        return inv.eliminar_articulo(id);
    }
    
    public void registrar_residuo(Residuos_Electronicos re){
        Inventario_Adm inv = new Inventario_Adm();
        inv.add_residuo(re);
    }
    
    public void registrar_articulo(Inventario_RE ire){
        Inventario_Adm inv = new Inventario_Adm();
        inv.add_articulo(ire);
    }
}
