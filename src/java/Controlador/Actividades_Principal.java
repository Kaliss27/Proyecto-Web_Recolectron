
package Controlador;

import Modelo.Registro_Actividades;
import Modelo.Vista_Actividades;
import Modelo.Vista_Material;
import Modelo.Vista_Material_Revision;
import Querys.Actividades_Adm;
import java.util.ArrayList;

/**
 *
 * @author Alvaro
 */
public class Actividades_Principal {
    
    public ArrayList<Vista_Actividades>obtenerActividad(){
        Actividades_Adm actividades = new Actividades_Adm();
        return actividades.getActividades();
    }
    
    public ArrayList<Vista_Material>obtenerMaterial(){
        Actividades_Adm actividades = new Actividades_Adm();
        return actividades.getMaterial();
    }
    
    public ArrayList<Vista_Material_Revision>obtenerMaterial_Revision(){
        Actividades_Adm actividades = new Actividades_Adm();
        return actividades.getMaterial_Revision();
    }
    
    public void editar_Acti(Registro_Actividades ra){
        Actividades_Adm edit = new Actividades_Adm();
        edit.editarActividad(ra);
    }
    
     public void registrar_actividad(Registro_Actividades ra){
        Actividades_Adm act = new Actividades_Adm();
        act.add_actividad(ra);
    }
     
    public boolean eliminar_material(int id){
        Actividades_Adm act = new Actividades_Adm();
        return act.eliminar_material(id);
    }
    
    public boolean eliminar_actividad(int id){
        Actividades_Adm act = new Actividades_Adm();
        return act.delete_actividad(id);
    }
}
