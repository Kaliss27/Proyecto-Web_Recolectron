
package Controlador;

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
}
