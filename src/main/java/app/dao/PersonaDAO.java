
package app.dao;

import app.model.Persona;
import app.zelper.GenericCRUD;
import java.util.List;


public interface PersonaDAO extends GenericCRUD<Persona> {
    
        List<Persona> listAdministrador();
}
