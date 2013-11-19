package app.controller.adm.persona;

import app.dao.LocalDAO;
import app.dao.PersonaDAO;
import app.model.Persona;
import app.model.Servicio;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonaServiceImpl implements PersonaService {

    ///Netbean inyecte el Bean    
    @Autowired
    PersonaDAO personaDao;

    @Override
    public List<Persona> list() {
        return personaDao.list();
    }

    @Override
    public Persona get(Persona t) {
        return personaDao.get(t);
    }

    @Override
    public void save(Persona t) {
        personaDao.save(t);
    }

    @Override
    public void update(Persona t) {
        personaDao.update(t);
    }

    @Override
    public void delete(Persona t) {
        personaDao.delete(t);
    }
}
