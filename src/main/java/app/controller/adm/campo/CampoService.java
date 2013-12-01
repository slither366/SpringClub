
package app.controller.adm.campo;

import app.model.Campo;
import app.model.Local;
import app.zelper.GenericCRUD;
import java.util.List;

public interface CampoService extends GenericCRUD<Campo>{
    
    List<Local> listLocal();//REVISAR ESTO
    
}
