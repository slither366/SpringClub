package app.dao;

import app.model.Persona;
import app.model.Usuario;
import app.zelper.GenericCRUD;

public interface UsuarioDAO extends GenericCRUD<Usuario> {

    Usuario getByPersona(Persona persona);

    Usuario getUsuarioForAuthDAO(Usuario usuario);

    Usuario getByUserName(String username);
}
