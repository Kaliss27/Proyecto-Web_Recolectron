
package Controlador;

import Modelo.Catalogo_Articulos;
import Modelo.RegistroDe_Componentes;
import Modelo.RegistroDe_PublicoGral;
import Modelo.Registro_Emision_Donaciones_Estudiantes;
import Modelo.Registro_Emision_Donaciones_PG;
import Querys.Donaciones_Emi;
import java.util.ArrayList;

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
    
    public ArrayList<Catalogo_Articulos>obtenerArticulo(){
        Donaciones_Emi arti = new Donaciones_Emi();
        return arti.getArticulo();
    }
    
    public void registar_donacion_Estudiante(RegistroDe_Componentes rce){
        Donaciones_Emi dee = new Donaciones_Emi();
        dee.registrar_donacion_estudiante(rce);
    }
    
    public void registar_donacion_PublicoG(RegistroDe_PublicoGral rpg){
        Donaciones_Emi dee = new Donaciones_Emi();
        dee.registrar_donacion_publicogral(rpg);
    }
    
    public void modificar_cantidad(int id,int cantidad){
        Donaciones_Emi dee = new Donaciones_Emi();
        dee.modificar_cantidad_inventario(id, cantidad);
    }
    
}
