package Controlador;
        
import Modelo.Catalogo_PE_Deps;
import Modelo.Registro_Visitas;
import Modelo.Catalogo_Visitas;
import Querys.Reg_Visitas;
import java.util.ArrayList;

/**
 *
 * @author Alvaro
 */
public class Visitas {
    
       public ArrayList<Catalogo_PE_Deps> obtenerPE(){
       Reg_Visitas regs = new Reg_Visitas();
        return regs.getPE();
    }
    
    public ArrayList<Catalogo_Visitas> obtenerVisitas(){
       Reg_Visitas regs = new Reg_Visitas();
        return regs.getVisitas();
    }
    
    public void insertar(Registro_Visitas rv){
        Reg_Visitas regs = new Reg_Visitas();
        regs.add(rv);
    }
}
