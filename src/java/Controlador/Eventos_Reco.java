
package Controlador;

import Modelo.Eventos;
import Querys.Events;

/**
 *
 * @author Alvaro
 */
public class Eventos_Reco {
    
    public void insertar(Eventos ev){
        Events eventos = new Events();
        eventos.add(ev);
    }
    
}
