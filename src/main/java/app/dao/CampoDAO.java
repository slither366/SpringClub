
package app.dao;

import app.model.Campo;
import app.model.Local;
import app.zelper.GenericCRUD;
import java.util.List;


public interface CampoDAO extends GenericCRUD<Campo>{

    public List<Campo> allByLocal(Local local);
    public Campo getByName(String descripcion);
}
