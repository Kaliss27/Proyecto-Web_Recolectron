
package Controlador;

import Modelo.Registro_Emision_Donaciones_Estudiantes;
import Modelo.Registro_Emision_Donaciones_PG;
import Querys.Donaciones_Emi;

/**
 *
 * @author Alvaro
 */
public class DonacionesEm {
    
     public void insertar_estudiante(Registro_Emision_Donaciones_Estudiantes rede){
        Donaciones_Emi de = new Donaciones_Emi();
        de.add_estudiante(rede);
    }
     
    public void insertar_publico(Registro_Emision_Donaciones_PG redpg){
        Donaciones_Emi de = new Donaciones_Emi();
        de.add_publico(redpg);
    }
    
}