
package Modelo;

/**
 *
 * @author Alvaro
 */
public class SB_Actividades {
    int id;
    int fk_sb;
    int fk_act;

    public SB_Actividades() {
    }

    public SB_Actividades(int fk_sb, int fk_act) {
        this.fk_sb = fk_sb;
        this.fk_act = fk_act;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFk_sb() {
        return fk_sb;
    }

    public void setFk_sb(int fk_sb) {
        this.fk_sb = fk_sb;
    }

    public int getFk_act() {
        return fk_act;
    }

    public void setFk_act(int fk_act) {
        this.fk_act = fk_act;
    }
    
    
}
