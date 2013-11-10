package app.controller.adm.servicio;

import app.dao.ServicioDAO;
import app.model.Servicio;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServicioServiceImpl  implements ServicioService{

///Netbean inyecte el Bean    
    @Autowired
    ServicioDAO servicioDao;
    
    @Override
    public List<Servicio> list() {
        return servicioDao.list();
    }

    @Override
    public Servicio get(Servicio t) {
        return servicioDao.get(t);
    }

    @Override
    public void save(Servicio t) {
        servicioDao.save(t);
    }

    @Override
    public void update(Servicio t) {
        servicioDao.update(t);
    }

    @Override
    public void delete(Servicio t) {
        servicioDao.delete(t);
    }
    
}
